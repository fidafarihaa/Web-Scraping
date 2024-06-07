# Web-Scraping

<p align="center">
  <img width="750" height="400" src="https://github.com/fidafarihaa/Web-Scraping/blob/main/pngaaa.com-1697352.png">
</p>

<div align="justify">

## :scroll: Deskripsi

Situs Samehadaku adalah situs yang digunakan banyak orang untuk menyaksikan anime dengan subtitle Indonesia terbaru, dengan kualitas video yang sudah HD. Situs ini menawarkan koleksi anime yang lengkap, sehingga menjadi favorit banyak orang.

Kali ini akan dilakukan scrapin website https://samehadaku.email/daftar-anime-2/?order=latest&status=&type= dimana website ini menampilkan Judul Anime, Rating,  Jenis Penanyangan, serta Genre. Anime-Anime seperti Naruto, Kuroko No Basuke, dan sebagainya tersedia di website ini.

Pengambilan data diambil setiap hari pada pukul 09.00 WIB menggunakan gitflow dan data disimpan ke MongoDB dengan jumlah 3 data/hari.

## :bookmark_tabs: Requirements

- Scrapping data menggunakan package R yaitu `rvest` dengan pendukung package lainnya seperti `tidyverse`,`dplyr`,`tidyr` , `stringr` dan `xml2`  
- RDBMS yang digunakan adalah MongoDB
- Connect MongoDB ke R menggunakan bantuan package `mongolite`

## :heavy_check_mark: Contoh Dokumen
Contoh dokumen yang ada pada MongoDB sebagai berikut:
```{
  "_id": {
    "$oid": "66582662d0bcb804d162064c"
  },
  "Judul": "Kimetsu no Yaiba Season 4 Hashira Geiko-hen",
  "Rating": 8.28,
  "Penanyangan": "TV, Ongoing",
  "Genre": "Action"
}
```

## :desktop_computer: **Visualisasi**

Berikut link visualisasi dari data yang telah di scraping : https://rpubs.com/fidafarihaa/Web-Scraping-Samehadaku

## :woman_with_headscarf: **Pengembang**
**Fida Fariha Amatullah (G1501231064)**
