#============================================================= LIBRARY =======================================================

message('Loading Packages')
library(rvest)
library(tidyverse)
library(mongolite)
library(xml2)
library(dplyr)
library(tidyr)
library(stringr)

#================================================== SAMEHADAKU ===============================================================

message('Scraping Data')
Data_Anime <- data.frame(Judul = character(),
                         Rating = numeric(),
                         Penayangan = character(),
                         Genre = character(),
                         stringsAsFactors = FALSE)
for(i in 1:13){
  url <- paste0("https://samehadaku.email/daftar-anime-2/page/",i,"/?order=latest&status&type")
  html<-read_html(url)
  Judul <- html %>% 
    html_nodes("h2") %>% 
    html_text(trim = TRUE)
  Rating <- html %>% 
    html_nodes(".skor") %>% 
    html_text(trim = TRUE)
  Rating <- as.numeric(Rating)
  Rating[is.na(Rating)] <- 0
  Penayangan <- html %>% 
    html_nodes(".type") %>% 
    html_text(trim = TRUE)
  Penayangan <- matrix(Penayangan, nrow = length(Penayangan)/2,ncol = 2, byrow = T)
  Penayangan <- as.data.frame(Penayangan)
  colnames(Penayangan)<-c("a","b")
  Penayangan$new_col <- do.call(paste, c(Penayangan[c("a", "b")], sep = ", "))
  Genre <- html %>% 
    html_nodes(".genres") %>% 
    html_text(trim = TRUE)
  Genre <- str_extract(Genre, "^[A-Z][a-z]*")
  vektor <- data.frame(Judul, Rating, Penayangan$new_col, Genre, stringsAsFactors = FALSE)
  Data_Anime <- rbind(Data_Anime, vektor) 
}

srape_data <- sample(1:390,5,replace=F)
data_scrape <- Data_Anime[srape_data,]

#===================================== INPUT MONGODB ====================================================================
# MONGODB
message('Input Data to MongoDB Atlas')
library(mongolite)
# nama koleksi
collection <- "Animes"
# nama database
db <- "scraping"
# koneksi ke mongoDB
url <- "mongodb+srv://fidafarihaafida:22Mei2001@cluster0.8nxgwh0.mongodb.net/"
Animes <- mongo(collection=collection, db=db, url=url)
Animes$insert(data_scrape)
rm(Animes)
