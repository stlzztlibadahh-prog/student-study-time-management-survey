# Analisis Manajemen Waktu Belajar Mahasiswa Program Studi Statistika Universitas Mataram Menggunakan Metode Two-Stage Cluster Sampling

![Language](https://img.shields.io/badge/Language-R-276DC3?logo=r&logoColor=white)
![Method](https://img.shields.io/badge/Method-Two--Stage%20Cluster%20Sampling-success)
![Sampling](https://img.shields.io/badge/Sampling-Probability%20Sampling-yellowgreen)
![Analysis](https://img.shields.io/badge/Analysis-Survey-orange)
![Variable](https://img.shields.io/badge/Variable-Time%20Management-blueviolet)

---

## Deskripsi Proyek

Repository ini memuat seluruh tahapan penelitian mengenai manajemen waktu belajar mahasiswa Program Studi Statistika Universitas Mataram dengan menerapkan metode Two-Stage Cluster Sampling sebagai teknik pengambilan sampel. Penelitian dilakukan berdasarkan data hasil penyebaran kuesioner untuk memperoleh gambaran mengenai tingkat manajemen waktu belajar mahasiswa serta menghasilkan estimasi yang dapat mewakili populasi.

Proses analisis dilakukan menggunakan bahasa pemrograman R, dimulai dari pengolahan dan pemeriksaan kualitas data, pembentukan variabel penelitian, pengujian validitas dan reliabilitas instrumen, analisis statistika deskriptif, visualisasi data, perhitungan bobot sampel, hingga analisis survei melalui estimasi Weighted Mean, Standard Error (SE), Confidence Interval (CI), Design Effect (DEFF), dan Relative Standard Error (RSE).

Repository ini disusun sebagai dokumentasi penelitian yang terstruktur sehingga setiap tahapan analisis dapat dipelajari, direplikasi, dan dijadikan referensi dalam penerapan metode survei menggunakan Two-Stage Cluster Sampling.

---

## Struktur Repository

```text
Analisis-Manajemen-Waktu-Belajar/
├── README.md
├── Executive_Summary.pdf
├── data/
│   └── Data_Kuesioner.xlsx
├── script/
│   └── Analisis_Manajemen_Waktu.R
├── output/
│   ├── Bar_Chart.png
│   └── Heatmap_Korelasi.png
├── randomisasi/
│   └── Hasil_Randomisasi_Cluster.pdf
└── formulir/
    └── Kuesioner.pdf
```

Keterangan struktur repository:

| Folder/File | Keterangan |
|-------------|------------|
| README.md | Dokumentasi lengkap penelitian dan hasil analisis. |
| data | Berisi data mentah yang digunakan pada penelitian. |
| script | Berisi script R untuk seluruh proses analisis data. |
| gambar | Berisi visualisasi hasil analisis berupa bar chart dan heatmap. |
| randomisasi | Berisi hasil proses pemilihan cluster secara acak menggunakan metode Two-Stage Cluster Sampling. |
| formulir | Berisi instrumen penelitian berupa kuesioner yang digunakan dalam pengumpulan data. |

---

## Daftar Isi

- [Latar Belakang](#latar-belakang)
- [Tujuan Penelitian](#tujuan-penelitian)
- [Metodologi Penelitian](#metodologi-penelitian)
- [Struktur Repository](#struktur-repository)
- [Alur Analisis](#alur-analisis)
- [Hasil dan Pembahasan](#hasil-dan-pembahasan)
- [Kesimpulan](#kesimpulan)
- [Rekomendasi](#rekomendasi)
- [Referensi](#referensi)
- [Link Kuesioner](#link-kuesioner)
---

## Latar Belakang

Manajemen waktu merupakan kemampuan seseorang dalam mengatur dan memanfaatkan waktu secara efektif untuk menyelesaikan berbagai aktivitas. Bagi mahasiswa, manajemen waktu belajar menjadi salah satu faktor penting yang dapat mendukung keberhasilan akademik. Kemampuan dalam mengatur jadwal belajar, menyelesaikan tugas tepat waktu, serta menyeimbangkan kegiatan akademik dan nonakademik dapat meningkatkan produktivitas dan efektivitas proses belajar.

Mahasiswa Program Studi Statistika Universitas Mataram memiliki berbagai aktivitas yang harus dijalankan, seperti mengikuti perkuliahan, mengerjakan tugas, praktikum, penelitian, organisasi, maupun kegiatan lainnya. Padatnya aktivitas tersebut menyebabkan setiap mahasiswa memiliki cara yang berbeda dalam mengatur waktu belajarnya. Oleh karena itu, diperlukan suatu penelitian untuk mengetahui bagaimana manajemen waktu belajar mahasiswa sehingga dapat memberikan gambaran mengenai kebiasaan belajar yang dimiliki.

Penelitian ini menggunakan metode Two-Stage Cluster Sampling sebagai teknik pengambilan sampel. Data diperoleh melalui penyebaran kuesioner kepada mahasiswa Program Studi Statistika Universitas Mataram. Hasil penelitian diharapkan dapat memberikan informasi mengenai karakteristik manajemen waktu belajar mahasiswa serta menjadi bahan evaluasi untuk meningkatkan efektivitas proses pembelajaran.

---

## Tujuan Penelitian

Penelitian ini bertujuan untuk:

- Mendeskripsikan tingkat manajemen waktu belajar mahasiswa Program Studi Statistika Universitas Mataram.
- Menguji validitas dan reliabilitas instrumen penelitian.
- Menerapkan metode Two-Stage Cluster Sampling dalam proses pengambilan sampel.
- Menghitung bobot sampel berdasarkan peluang pemilihan pada setiap tahap sampling.
- Mengestimasi rata-rata skor manajemen waktu belajar menggunakan analisis survei.
- Mengevaluasi kualitas hasil estimasi melalui Standard Error (SE), Confidence Interval (CI), Design Effect (DEFF), dan Relative Standard Error (RSE).

---

## Metodologi Penelitian

Metodologi penelitian menjelaskan pendekatan yang digunakan, teknik pengambilan sampel, instrumen penelitian, teknik pengumpulan data, serta tahapan analisis yang dilakukan untuk memperoleh hasil penelitian.

### Jenis Penelitian

Penelitian ini merupakan penelitian kuantitatif dengan metode survei. Data dikumpulkan melalui penyebaran kuesioner kepada mahasiswa Program Studi Statistika Universitas Mataram untuk memperoleh informasi mengenai manajemen waktu belajar mahasiswa.

### Populasi dan Sampel

Populasi dalam penelitian ini adalah seluruh mahasiswa aktif Program Studi Statistika Universitas Mataram.

Teknik pengambilan sampel menggunakan metode Two-Stage Cluster Sampling. Pada tahap pertama dilakukan pemilihan klaster menggunakan Simple Random Sampling (SRS). Klaster yang digunakan adalah kelas mahasiswa pada masing-masing angkatan sehingga terdapat enam klaster. Proses pemilihan klaster dilakukan secara acak menggunakan fungsi RAND pada Microsoft Excel hingga diperoleh dua klaster terpilih.

Selanjutnya, pada tahap kedua dilakukan pemilihan responden dari setiap klaster yang terpilih hingga diperoleh jumlah sampel penelitian.

### Instrumen Penelitian

Instrumen penelitian berupa kuesioner mengenai manajemen waktu belajar mahasiswa yang terdiri atas 15 butir pernyataan menggunakan Skala Likert 4 poin.

| Pilihan Jawaban | Skor |
|-----------------|:----:|
| Sangat Tidak Setuju (STS) | 1 |
| Tidak Setuju (TS) | 2 |
| Setuju (S) | 3 |
| Sangat Setuju (SS) | 4 |

#### Variabel Penelitian

| Kode | Pernyataan |
|------|------------|
| P1 | Saya membuat jadwal belajar untuk membantu mengatur waktu belajar saya. |
| P2 | Saya menyediakan waktu khusus untuk belajar di luar jam perkuliahan. |
| P3 | Saya belajar sesuai dengan jadwal yang telah saya rencanakan. |
| P4 | Saya menentukan prioritas materi yang perlu dipelajari terlebih dahulu. |
| P5 | Saya menyusun target belajar yang ingin dicapai dalam periode tertentu. |
| P6 | Saya memanfaatkan waktu luang untuk mengulang materi perkuliahan. |
| P7 | Saya menghindari menunda kegiatan belajar yang telah direncanakan. |
| P8 | Saya tetap meluangkan waktu untuk belajar meskipun memiliki banyak kegiatan lainnya. |
| P9 | Saya mampu membagi waktu antara belajar, organisasi, dan kegiatan pribadi. |
| P10 | Saya mengurangi penggunaan media sosial saat waktu belajar berlangsung. |
| P11 | Saya dapat berkonsentrasi dengan baik selama waktu belajar yang telah ditentukan. |
| P12 | Saya menggunakan waktu belajar secara efektif untuk memahami materi perkuliahan. |
| P13 | Saya menyelesaikan target belajar yang telah saya tetapkan. |
| P14 | Saya mengevaluasi penggunaan waktu belajar saya secara berkala. |
| P15 | Secara keseluruhan, saya merasa mampu mengelola waktu belajar dengan baik. |

### Teknik Pengumpulan Data

Data dikumpulkan melalui penyebaran kuesioner kepada responden yang terpilih sebagai sampel penelitian. Sebelum digunakan dalam penelitian utama, instrumen terlebih dahulu diuji validitas dan reliabilitas menggunakan responden di luar sampel penelitian.

---

## Alur Analisis
Analisis dilakukan menggunakan perangkat lunak R melalui tahapan:

1. Import data hasil kuesioner.
2. Pengolahan data (data cleaning).
3. Menyiapkan variabel penelitian.
4. Uji validitas instrumen.
5. Uji reliabilitas instrumen.
6. Analisis statistika deskriptif.
7. Visualisasi data.
8. Pembobotan menggunakan metode Two-Stage Cluster Sampling.
9. Analisis survei menggunakan package `survey`, yang meliputi perhitungan Weighted Mean, Confidence Interval (CI), Design Effect (DEFF), dan Relative Standard Error (RSE).
    
---

## LANGKAH ANALISIS

### Import Data

Data hasil kuesioner diimpor ke dalam R untuk dilakukan proses analisis.

```r
library(readxl)

data <- read_excel("Data_Manajemen_Waktu.xlsx")

head(data)
str(data)
summary(data)
```

### Pengolahan Data

Tahap ini dilakukan untuk memastikan data siap dianalisis.

```r
# Mengecek missing value
colSums(is.na(data))

# Menghapus missing value
data <- na.omit(data)
```

### Menyiapkan Variabel Penelitian

Variabel penelitian dipilih dari kolom H sampai V kemudian diberi nama P1–P15 agar lebih mudah dianalisis.

```r
library(dplyr)

item <- data %>%
  select(
    P1 = `Saya membuat jadwal belajar untuk membantu mengatur waktu belajar saya.`,
    P2 = `Saya menyediakan waktu khusus untuk belajar di luar jam perkuliahan.`,
    P3 = `Saya belajar sesuai dengan jadwal yang telah saya rencanakan.`,
    P4 = `Saya menentukan prioritas materi yang perlu dipelajari terlebih dahulu.`,
    P5 = `Saya menyusun target belajar yang ingin dicapai dalam periode tertentu.`,
    P6 = `Saya memanfaatkan waktu luang untuk mengulang materi perkuliahan.`,
    P7 = `Saya menghindari menunda kegiatan belajar yang telah direncanakan.`,
    P8 = `Saya tetap meluangkan waktu untuk belajar meskipun memiliki banyak kegiatan lainnya.`,
    P9 = `Saya mampu membagi waktu antara belajar, organisasi, dan kegiatan pribadi.`,
    P10 = `Saya mengurangi penggunaan media sosial saat waktu belajar berlangsung.`,
    P11 = `Saya dapat berkonsentrasi dengan baik selama waktu belajar yang telah ditentukan.`,
    P12 = `Saya menggunakan waktu belajar secara efektif untuk memahami materi perkuliahan.`,
    P13 = `Saya menyelesaikan target belajar yang telah saya tetapkan.`,
    P14 = `Saya mengevaluasi penggunaan waktu belajar saya secara berkala.`,
    P15 = `Secara keseluruhan, saya merasa mampu mengelola waktu belajar dengan baik.`
  )

# Membuat skor total
data$Skor_Total <- rowSums(item)
```

### Uji Validitas

Uji validitas dilakukan menggunakan Corrected Item-Total Correlation.

```r
library(psych)

hasil_validitas <- alpha(item)

hasil_validitas$item.stats
```

### Uji Reliabilitas

Uji reliabilitas dilakukan menggunakan Cronbach's Alpha.

```r
hasil_reliabilitas <- alpha(item)

hasil_reliabilitas$total
```

### Analisis Statistika Deskriptif

Analisis deskriptif dilakukan untuk mengetahui karakteristik responden dan gambaran skor manajemen waktu belajar.

```r
summary(data$Skor_Total)

mean(data$Skor_Total)

median(data$Skor_Total)

sd(data$Skor_Total)

min(data$Skor_Total)

max(data$Skor_Total)

table(data$Angkatan)

table(data$Semester)

table(data$`Jenis Kelamin`)

prop.table(table(data$`Jenis Kelamin`))*100
```

## Visualisasi Data

Visualisasi data dilakukan untuk memberikan gambaran mengenai rata-rata skor setiap pernyataan serta hubungan antarbutir pernyataan pada kuesioner manajemen waktu belajar.

```r
library(ggplot2)
library(corrplot)

# Bar Chart Rata-rata Tiap Pernyataan

mean_item <- colMeans(item)

mean_df <- data.frame(
  Variabel = names(mean_item),
  Rata_rata = mean_item
)

ggplot(mean_df, aes(x = Variabel, y = Rata_rata)) +
  geom_col(fill = "steelblue") +
  geom_text(aes(label = round(Rata_rata, 2)),
            vjust = -0.4,
            size = 3.5) +
  labs(
    title = "Rata-rata Skor Tiap Pernyataan",
    x = "Pernyataan",
    y = "Rata-rata Skor"
  ) +
  theme_minimal()

# Heatmap Korelasi Antar Pernyataan

cor_item <- cor(item)

corrplot(
  cor_item,
  method = "color",
  type = "upper",
  tl.col = "black",
  tl.srt = 45,
  addCoef.col = "black",
  number.cex = 0.6
)
```

### Pembobotan Two-Stage Cluster Sampling

Pembobotan dilakukan berdasarkan peluang pemilihan responden pada setiap tahap sampling.

```r
# Tahap pertama
M <- 6
m <- 2

P1 <- m/M

# Tahap kedua
N2024 <- 26
N2025 <- 32

n2024 <- 13
n2025 <- 17

P2_2024 <- n2024/N2024
P2_2025 <- n2025/N2025

# Bobot
Weight2024 <- 1/(P1*P2_2024)
Weight2025 <- 1/(P1*P2_2025)

# Menambahkan bobot ke data
data$Weight <- ifelse(
  data$Angkatan == 2024,
  Weight2024,
  Weight2025
)
```

### Analisis Data

Analisis data dilakukan menggunakan package **survey**.

```r
library(survey)

design <- svydesign(
  ids = ~Angkatan,
  weights = ~Weight,
  data = data
)

# Weighted Mean
svymean(~Skor_Total, design)

# Confidence Interval 95%
confint(svymean(~Skor_Total, design))

# Standard Error
SE(svymean(~Skor_Total, design))

# Design Effect
svymean(~Skor_Total, design, deff = TRUE)

# Relative Standard Error
hasil <- svymean(~Skor_Total, design)

SE(hasil) / coef(hasil) * 100
```
---

## HASIL DAN PEMBAHASAN

### Import Data
#### Head Data
Bagian ini menampilkan enam data pertama dari dataset untuk memberikan gambaran awal mengenai struktur data yang digunakan dalam penelitian.

| Timestamp | Nama | Program Studi | Kelas | Angkatan | Semester | Jenis Kelamin |
|----------|------|--------------|-------|----------|----------|----------------|
| 2026-06-18 21:25:31 | Tabrani Ali | Statistika | A | 2025 | 2 | Laki-Laki |
| 2026-06-18 21:31:47 | Ni Kadek Mintya Yulantini | Statistika | A | 2025 | 2 | Perempuan |
| 2026-06-18 21:38:18 | Nurlinda suryani | Statistika | A | 2024 | 4 | Perempuan |
| 2026-06-18 21:38:30 | aura alifa | Statistika | A | 2024 | 4 | Perempuan |
| 2026-06-18 22:14:15 | Era Faz... | Statistika | A | 2024 | 4 | Perempuan |
| 2026-06-18 23:45:05 | Meylisa... | Statistika | A | 2024 | 4 | Perempuan |

Berdasarkan data awal tersebut, terlihat bahwa responden terdiri dari mahasiswa Program Studi Statistika dengan variasi angkatan 2024 dan 2025. Data juga menunjukkan bahwa responden berasal dari satu kelas utama yaitu kelas A dengan perbedaan pada semester aktif.

#### Struktur Data

Struktur data digunakan untuk mengetahui tipe variabel yang terdapat dalam dataset penelitian.

| Variabel | Tipe Data | Keterangan |
|----------|----------|-------------|
| Timestamp | POSIXct | Waktu pengisian kuesioner |
| Nama | character | Nama responden |
| Program Studi | character | Program studi responden |
| Kelas | character | Kelas responden |
| Angkatan | numeric | Tahun angkatan |
| Semester | numeric | Semester aktif |
| Jenis Kelamin | character | Gender responden |
| Item 1–15 | numeric | Skala Likert 1–4 |

Hasil struktur data menunjukkan bahwa variabel penelitian terdiri dari kombinasi data kategorik dan numerik. Variabel item kuesioner (P1–P15) bertipe numerik yang sesuai untuk analisis statistik lanjutan seperti uji validitas, reliabilitas, dan analisis deskriptif.

#### Statistik Deskriptif Item Kuesioner 

Statistik deskriptif digunakan untuk menggambarkan pola jawaban responden terhadap setiap indikator manajemen waktu belajar.

| Item | Min | Q1 | Median | Mean | Q3 | Max |
|------|-----|----|--------|------|----|-----|
| P1 | 2.0 | 3.0 | 3.0 | 3.167 | 3.75 | 4.0 |
| P2 | 2.0 | 3.0 | 3.0 | 2.933 | 3.00 | 4.0 |
| P3 | 1.0 | 3.0 | 3.0 | 3.033 | 3.00 | 4.0 |
| P4 | 2.0 | 3.0 | 3.0 | 3.367 | 4.00 | 4.0 |
| P5 | 2.0 | 3.0 | 3.0 | 2.967 | 3.00 | 4.0 |
| P6 | 1.0 | 3.0 | 3.0 | 2.967 | 3.00 | 4.0 |
| P7 | 2.0 | 2.25 | 3.0 | 2.900 | 3.00 | 4.0 |
| P8 | 2.0 | 3.0 | 3.0 | 3.000 | 3.00 | 4.0 |
| P9 | 2.0 | 3.0 | 3.0 | 3.033 | 3.00 | 4.0 |
| P10 | 2.0 | 3.0 | 3.0 | 3.067 | 4.00 | 4.0 |
| P11 | 2.0 | 3.0 | 3.0 | 3.133 | 4.00 | 4.0 |
| P12 | 2.0 | 3.0 | 3.0 | 3.200 | 3.75 | 4.0 |
| P13 | 2.0 | 3.0 | 3.0 | 3.133 | 3.75 | 4.0 |
| P14 | 1.0 | 2.0 | 3.0 | 2.700 | 3.00 | 4.0 |
| P15 | 2.0 | 3.0 | 3.0 | 3.133 | 3.75 | 4.0 |

Berdasarkan hasil statistik deskriptif, seluruh item kuesioner menunjukkan nilai rata-rata berada pada rentang 2.700 hingga 3.367. Hal ini menunjukkan bahwa secara umum responden memiliki kecenderungan menjawab pada kategori “setuju”, yang mengindikasikan bahwa mahasiswa cukup mampu dalam mengelola waktu belajar mereka. Nilai median yang sebagian besar berada pada angka 3 menunjukkan bahwa distribusi jawaban responden cenderung terpusat pada kategori sedang hingga tinggi. Hal ini mengindikasikan bahwa tidak terdapat variasi ekstrem dalam jawaban responden pada sebagian besar item. Selain itu, nilai minimum yang berada pada angka 1–2 menunjukkan bahwa terdapat beberapa responden yang memiliki tingkat manajemen waktu yang lebih rendah, namun jumlahnya tidak dominan. Sebaliknya, nilai maksimum yang mencapai 4 pada hampir seluruh item menunjukkan bahwa terdapat responden dengan tingkat manajemen waktu yang sangat baik. Secara keseluruhan, hasil ini menunjukkan bahwa indikator manajemen waktu belajar mahasiswa Program Studi Statistika Universitas Mataram berada pada kategori cukup baik hingga baik.

### 2. Pengolahan Data (Data Cleaning)

Tahap pengolahan data dilakukan untuk memastikan bahwa data yang digunakan telah memenuhi kualitas yang diperlukan sebelum memasuki tahap analisis. Pemeriksaan meliputi jumlah responden, keberadaan *missing value*, data duplikat, dan *outlier*.

| Pemeriksaan | Hasil |
|--------------|:----:|
| Jumlah Responden | 30 |
| Missing Value | 0 |
| Data Duplikat | 0 |
| Outlier (Metode IQR) | 0 |
| Status Data | Data siap dianalisis |

Berdasarkan Tabel 4.2 diketahui bahwa data penelitian terdiri atas 30 responden. Hasil pemeriksaan menunjukkan bahwa tidak terdapat *missing value*, data duplikat, maupun *outlier* berdasarkan metode *Interquartile Range* (IQR). Dengan demikian, data telah memenuhi kriteria kualitas yang baik sehingga dapat digunakan pada tahap analisis selanjutnya tanpa memerlukan proses pembersihan atau perbaikan data tambahan.

## 4.3 Uji Validitas

Uji validitas dilakukan untuk mengetahui apakah setiap butir pernyataan pada kuesioner sudah mampu mengukur variabel manajemen waktu belajar mahasiswa. Pengujian dilakukan menggunakan metode Corrected Item-Total Correlation (r.drop). Suatu item dinyatakan valid apabila memiliki nilai r.drop ≥ 0,30.
\[
r_{it}=\frac{\sum (X_i-\bar X_i)(T_i-\bar T_i)}
{\sqrt{\sum (X_i-\bar X_i)^2\sum (T_i-\bar T_i)^2}}
\]

| Item | Nilai r.drop | Keterangan |
|:----:|-------------:|:-----------|
| P1 | 0.6290 | Valid |
| P2 | 0.1910 | Tidak Valid |
| P3 | 0.5319 | Valid |
| P4 | 0.1483 | Tidak Valid |
| P5 | 0.2224 | Tidak Valid |
| P6 | 0.6646 | Valid |
| P7 | 0.6353 | Valid |
| P8 | 0.2469 | Tidak Valid |
| P9 | 0.2282 | Tidak Valid |
| P10 | 0.5611 | Valid |
| P11 | 0.3408 | Valid |
| P12 | 0.7515 | Valid |
| P13 | 0.6453 | Valid |
| P14 | 0.3987 | Valid |
| P15 | 0.6812 | Valid |

Berdasarkan Tabel 4.3, dari 15 butir pernyataan yang diuji terdapat 10 item yang dinyatakan valid, yaitu P1, P3, P6, P7, P10, P11, P12, P13, P14, dan P15. Hal ini karena nilai r.drop pada item-item tersebut lebih besar dari 0,30. Sementara itu, terdapat 5 item yang tidak valid, yaitu P2, P4, P5, P8, dan P9 karena nilai r.drop yang diperoleh masih kurang dari 0,30.

Hasil ini menunjukkan bahwa 10 item yang valid sudah mampu mengukur manajemen waktu belajar mahasiswa dengan baik sehingga dapat digunakan pada analisis selanjutnya. Sebaliknya, 5 item yang tidak valid tidak digunakan dalam uji reliabilitas karena kurang mampu menggambarkan variabel yang diteliti.

---

## 4.4 Uji Reliabilitas

Uji reliabilitas dilakukan untuk mengetahui tingkat konsistensi instrumen penelitian. Pengujian dilakukan menggunakan metode Cronbach's Alpha terhadap 10 item yang telah dinyatakan valid pada uji validitas. Suatu instrumen dikatakan reliabel apabila memiliki nilai Cronbach's Alpha lebih besar dari 0,70.
\[
\alpha=
\frac{k}{k-1}
\left(
1-
\frac{\sum S_i^2}{S_T^2}
\right)
\]


| Parameter | Nilai |
|:--------------------|------:|
| Cronbach's Alpha (raw_alpha) | 0.8681 |
| Standardized Alpha (std.alpha) | 0.8743 |
| G6(smc) | 0.9045 |
| Average Inter-Item Correlation | 0.4103 |
| Signal-to-Noise Ratio (S/N) | 6.9564 |
| Standard Error (ase) | 0.0361 |
| Mean | 3.0433 |
| Standard Deviation | 0.4599 |
| Median Inter-Item Correlation | 0.4129 |

Berdasarkan Tabel 4.4 diperoleh nilai Cronbach's Alpha sebesar 0,8681. Nilai tersebut lebih besar dari 0,70 sehingga instrumen penelitian dapat dinyatakan reliabel.

Hasil ini menunjukkan bahwa kesepuluh item pernyataan yang digunakan memiliki tingkat konsistensi yang baik dalam mengukur manajemen waktu belajar mahasiswa. Dengan demikian, instrumen yang telah lolos uji validitas dan reliabilitas layak digunakan pada tahap analisis berikutnya.

---

## 4.5 Statistik Deskriptif

## 4.5 Analisis Statistika Deskriptif

Analisis statistika deskriptif dilakukan untuk memberikan gambaran mengenai skor manajemen waktu belajar mahasiswa serta karakteristik responden berdasarkan angkatan, semester, dan jenis kelamin.

### 4.5.1 Statistik Deskriptif Skor Manajemen Waktu Belajar

| Statistik | Nilai |
|:-----------|------:|
| Minimum | 21 |
| Kuartil 1 (Q1) | 28.00 |
| Median | 30.00 |
| Mean | 30.43 |
| Kuartil 3 (Q3) | 33.75 |
| Maksimum | 39 |
| Standar Deviasi | 4.60 |

Berdasarkan Tabel 4.5 diperoleh rata-rata skor manajemen waktu belajar mahasiswa sebesar 30,43 dengan nilai median sebesar 30. Nilai minimum yang diperoleh responden adalah 21, sedangkan nilai maksimum adalah 39. Standar deviasi sebesar 4,60 menunjukkan bahwa penyebaran skor responden relatif tidak terlalu besar sehingga sebagian besar skor berada di sekitar nilai rata-ratanya.

### 4.5.2 Distribusi Responden Berdasarkan Angkatan

| Angkatan | Jumlah Responden |
|:---------:|-----------------:|
| 2024 | 13 |
| 2025 | 17 |
| Total | 30 |

Berdasarkan Tabel 4.6 diketahui bahwa responden angkatan 2025 berjumlah 17 orang, sedangkan angkatan 2024 berjumlah 13 orang. Hal ini menunjukkan bahwa sebagian besar responden pada penelitian ini berasal dari angkatan 2025.

### 4.5.3 Distribusi Responden Berdasarkan Semester

| Semester | Jumlah Responden |
|:---------:|-----------------:|
| 2 | 17 |
| 4 | 13 |
| Total | 30 |

Berdasarkan Tabel 4.7 diketahui bahwa responden semester 2 berjumlah 17 orang dan semester 4 berjumlah 13 orang. Dengan demikian, mayoritas responden dalam penelitian ini merupakan mahasiswa semester 2.

### 4.5.4 Distribusi Responden Berdasarkan Jenis Kelamin

| Jenis Kelamin | Jumlah | Persentase (%) |
|:--------------|-------:|---------------:|
| Laki-Laki | 3 | 10 |
| Perempuan | 27 | 90 |
| Total | 30 | 100 |

Berdasarkan Tabel 4.8 diketahui bahwa responden perempuan berjumlah 27 orang atau sebesar 90%, sedangkan responden laki-laki berjumlah 3 orang atau sebesar 10%. Hal ini menunjukkan bahwa mayoritas responden dalam penelitian ini adalah mahasiswa berjenis kelamin perempuan.

---

## 4.6 Visualisasi Data

### 4.7.1 Rata-rata Tiap Item

### Output

```r
ggplot(mean_df, aes(x = Variabel, y = Rata_rata)) +
  geom_col(fill = "steelblue") +
  theme_minimal()
```

### Pembahasan

Grafik menunjukkan perbedaan rata-rata antar indikator manajemen waktu belajar. Beberapa indikator memiliki nilai lebih tinggi yang menunjukkan kebiasaan yang lebih baik pada aspek tersebut.

---

### 4.7.2 Korelasi Antar Item

### Output

```r
corrplot(cor_item, method = "color", type = "upper")
```

### Pembahasan

Terdapat korelasi positif antar sebagian besar item yang menunjukkan bahwa indikator manajemen waktu belajar saling berhubungan.

---

## 4.7 Pembobotan Two-Stage Cluster Sampling

## 4.8 Pembobotan Two-Stage Cluster Sampling

Pembobotan dilakukan untuk memperoleh bobot setiap responden berdasarkan peluang terpilihnya sampel pada metode Two-Stage Cluster Sampling. Bobot dihitung menggunakan peluang pemilihan pada tahap pertama dan tahap kedua dengan rumus:

\[
P = P_1 \times P_2
\]

dengan:

- \(P_1\) = peluang pemilihan cluster pada tahap pertama
- \(P_2\) = peluang pemilihan elemen pada tahap kedua

Sedangkan bobot dihitung menggunakan rumus:

\[
W=\frac{1}{P}
\]

### Tahap Pertama

Diketahui:

- Jumlah cluster populasi (\(M\)) = 6
- Jumlah cluster yang dipilih (\(m\)) = 2

Sehingga peluang pemilihan cluster adalah

\[
P_1=\frac{m}{M}
=\frac{2}{6}
=0,3333
\]

### Tahap Kedua

#### Angkatan 2024

\[
P_2=\frac{13}{26}=0,5
\]

Sehingga bobot responden angkatan 2024 adalah

\[
W_{2024}
=\frac{1}{0,3333 \times 0,5}
=6,0000
\]

#### Angkatan 2025

\[
P_2=\frac{17}{32}=0,53125
\]

Sehingga bobot responden angkatan 2025 adalah

\[
W_{2025}
=\frac{1}{0,3333 \times 0,53125}
=5,6471
\]

### Hasil Perhitungan Bobot

| Angkatan | Populasi (N) | Sampel (n) | Peluang Tahap 2 | Bobot |
|:---------:|-------------:|-----------:|----------------:|-------:|
| 2024 | 26 | 13 | 0.5000 | 6.0000 |
| 2025 | 32 | 17 | 0.5313 | 5.6471 |

Berdasarkan hasil perhitungan diperoleh bobot sebesar 6,0000 untuk responden angkatan 2024 dan 5,6471 untuk responden angkatan 2025. Perbedaan bobot tersebut terjadi karena peluang terpilihnya responden pada masing-masing angkatan berbeda. Bobot ini kemudian digunakan pada tahap analisis survei agar hasil estimasi yang diperoleh dapat mewakili kondisi populasi secara lebih baik.
---

## 4.8 Analisis SurveI

Analisis survei dilakukan menggunakan package `survey` pada perangkat lunak R dengan memanfaatkan bobot hasil pembobotan *Two-Stage Cluster Sampling* yang telah diperoleh pada tahap sebelumnya. Analisis ini bertujuan untuk memperoleh estimasi rata-rata skor manajemen waktu belajar mahasiswa beserta ukuran ketelitian hasil estimasinya.

---

### 4.8.1 Rata-rata Tertimbang (*Weighted Mean*)

Rata-rata tertimbang dihitung menggunakan persamaan berikut.

\[
\bar{Y}_w=\frac{\sum_{i=1}^{n}w_iY_i}{\sum_{i=1}^{n}w_i}
\]

dengan:

- \(w_i\) = bobot responden ke-\(i\)
- \(Y_i\) = skor total responden ke-\(i\)

Hasil estimasi rata-rata tertimbang disajikan pada Tabel 4.9.

#### Tabel 4.9 Hasil Weighted Mean

| Parameter | Nilai |
|-----------|------:|
| Weighted Mean | 30.398 |
| Standard Error (SE) | 0.8455 |

Berdasarkan Tabel 4.9 diperoleh nilai *Weighted Mean* sebesar **30,398**. Hal ini menunjukkan bahwa rata-rata skor manajemen waktu belajar mahasiswa setelah memperhitungkan bobot sampling adalah sekitar **30,40**. Nilai *Standard Error* sebesar **0,8455** menunjukkan bahwa estimasi rata-rata memiliki tingkat kesalahan yang relatif kecil sehingga hasil estimasi dapat dikatakan cukup stabil.

---

### 4.8.2 Interval Kepercayaan 95%

Interval kepercayaan dihitung menggunakan persamaan berikut.

\[
CI=\bar{Y}\pm Z_{\alpha/2}\times SE
\]

dengan tingkat kepercayaan sebesar **95%**.

Hasil perhitungan interval kepercayaan disajikan pada Tabel 4.10.

#### Tabel 4.10 Interval Kepercayaan 95%

| Batas Bawah | Batas Atas |
|------------:|-----------:|
| 28.7403 | 32.0548 |

Berdasarkan Tabel 4.10 diperoleh interval kepercayaan sebesar **28,7403 hingga 32,0548**. Hal ini berarti bahwa rata-rata skor manajemen waktu belajar mahasiswa pada populasi diperkirakan berada dalam rentang tersebut dengan tingkat kepercayaan sebesar **95%**. Dengan kata lain, apabila pengambilan sampel dilakukan berulang kali menggunakan metode yang sama, maka sekitar 95% interval yang terbentuk akan memuat nilai rata-rata populasi yang sebenarnya.

---

### 4.8.3 Design Effect (DEFF)

Nilai *Design Effect* dihitung menggunakan persamaan berikut.

\[
DEFF=\frac{Var_{design}}{Var_{SRS}}
\]

Hasil perhitungan *Design Effect* disajikan pada Tabel 4.11.

#### Tabel 4.11 Nilai Design Effect

| Parameter | Nilai |
|-----------|------:|
| Design Effect (DEFF) | 1.2173 |

Berdasarkan Tabel 4.11 diperoleh nilai *Design Effect* sebesar **1,2173**. Nilai ini menunjukkan bahwa varians estimasi yang dihasilkan menggunakan desain *Two-Stage Cluster Sampling* sekitar **1,22 kali** lebih besar dibandingkan apabila menggunakan *Simple Random Sampling*. Karena nilai DEFF masih mendekati **1**, maka desain sampling yang digunakan masih tergolong efisien dan tidak memberikan peningkatan varians yang terlalu besar terhadap hasil estimasi.

---

### 4.8.4 Relative Standard Error (RSE)

Nilai *Relative Standard Error* dihitung menggunakan persamaan berikut.

\[
RSE=\frac{SE}{\bar{Y}}\times100\%
\]

Hasil perhitungan RSE disajikan pada Tabel 4.12.

#### Tabel 4.12 Nilai Relative Standard Error

| Parameter | Nilai |
|-----------|------:|
| Relative Standard Error (RSE) | 2.7816 % |

Berdasarkan Tabel 4.12 diperoleh nilai *Relative Standard Error* (RSE) sebesar **2,7816%**. Nilai tersebut berada di bawah **5%**, sehingga menunjukkan bahwa hasil estimasi memiliki tingkat ketelitian yang sangat baik. Dengan demikian, rata-rata skor manajemen waktu belajar mahasiswa yang diperoleh melalui analisis survei dapat dianggap cukup akurat dan representatif dalam menggambarkan kondisi populasi penelitian.
```

Nilai RSE sebesar 2.78% menunjukkan bahwa estimasi termasuk sangat presisi.
