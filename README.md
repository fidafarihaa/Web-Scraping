# Web-Scraping

<p align="center">
  <img width="750" height="400" src="https://github.com/fidafarihaa/Web-Scraping/blob/main/pngaaa.com-1697352.png">
</p>

<div align="justify">

## :scroll: Deskripsi

Marvel Comics atau Marvel Worldwide Inc. sebelumnya Marvel Publishing Inc. dan Marvel Comics Group adalah nama suatu perusahaan dari Amerika Serikat yang memproduksi buku komik dan media lain yang berkaitan. Marvel pertama kali didirikan dengan nama "Timely Publications" pada tahun 1939 dan sempat berganti nama menjadi "Atlas Comics" sebelum akhirnya menjadi Marvel Comics pada tahun 1961. Sekarang, Marvel telah menjadi salah satu penerbit buku komik terbesar bersama dengan perusahaan saingan lamanya DC Comics (termasuk Superman, Batman dan Wonder Woman). Marvel juga memiliki situs wikinya sendiri. Situs tersebut diluncurkan pada tahun 2006 dan memuat berbagai informasi dalam jagad Marvel.

Kali ini akan dilakukan scrapin website https://www.marvel.com/comics dimana website ini menampilkan judul komik, tahun komik serta penulis komik. Komik-komik setiap karakter seperti spiderman, loki, dan sebagainya tersedia di website ini.

## :bookmark_tabs: Requirements

- Scrapping data menggunakan package R yaitu `rvest` dengan pendukung package lainnya seperti `tidyverse`,`dplyr`,`tidyr` dan `xml2`  
- RDBMS yang digunakan adalah MongoDB
- Connect MongoDB ke R menggunakan bantuan package `mongolite`

## :heavy_check_mark: Contoh Dokumen
Contoh dokumen yang ada pada MongoDB sebagai berikut:
```{
  "_id": {
    "$oid": "6651874b9d858a8a8d76566b"
  },
  "Judul": "Union Jack the Ripper: Blood Hunt (2024) #1",
  "Penulis": "ScottWalkerBrown"
}
```
