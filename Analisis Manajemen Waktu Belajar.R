#====================================================
# ANALISIS MANAJEMEN WAKTU BELAJAR MAHASISWA
#====================================================

# Memanggil package
library(readxl)
library(psych)
library(dplyr)
library(survey)

#====================================================
# 1. IMPORT DATA
#====================================================

library(readxl)

data <- read_excel("D:/SEMESTER 4/TEKSAM/Data UAS_ Sudent time manajemen survey.xlsx")

# Ambil kolom H sampai V
item <- data[, 8:17]

head(item)

head(data)
View(data)
str(data)
summary(data)

#====================================================
# 2. PENGOLAHAN DATA
#====================================================

# Missing value
sum(is.na(data))

# Data duplikat
sum(duplicated(data))

# Outlier
boxplot.stats(data$Skor_Total)$out

#====================================================
# 3. MENYIAPKAN VARIABEL
#====================================================

item <- data %>%
  select(
    P1 = `Saya membuat jadwal belajar untuk membantu mengatur waktu belajar saya.`,
    P2 = `Saya belajar sesuai dengan jadwal yang telah saya rencanakan.`,
    P3 = `Saya memanfaatkan waktu luang untuk mengulang materi perkuliahan.`,
    P4 = `Saya menghindari menunda kegiatan belajar yang telah direncanakan.`,
    P5 = `Saya mengurangi penggunaan media sosial saat waktu belajar berlangsung.`,
    P6 = `Saya dapat berkonsentrasi dengan baik selama waktu belajar yang telah ditentukan.`,
    P7 = `Saya menggunakan waktu belajar secara efektif untuk memahami materi perkuliahan.`,
    P8 = `Saya menyelesaikan target belajar yang telah saya tetapkan.`,
    P9 = `Saya mengevaluasi penggunaan waktu belajar saya secara berkala.`,
    P10 = `Secara keseluruhan, saya merasa mampu mengelola waktu belajar dengan baik.`
  )

# Skor Total
data$Skor_Total <- rowSums(item)

#====================================================
# 4. UJI VALIDITAS
#====================================================

# Uji validitas seluruh item
hasil_validitas <- psych::alpha(item)

# Menampilkan ringkasan validitas
hasil_validitas$item.stats


#====================================================
# 5. UJI RELIABILITAS
#====================================================

# Uji reliabilitas (semua item karena semuanya valid)
hasil_reliabilitas <- psych::alpha(item)

# Menampilkan hasil reliabilitas
hasil_reliabilitas$total

# Membentuk skor total dari seluruh item
data$Skor_Total <- rowSums(item)


#====================================================
# 6. ANALISIS STATISTIKA DESKRIPTIF
#====================================================

summary(data$Skor_Total)

mean(data$Skor_Total)
median(data$Skor_Total)
sd(data$Skor_Total)
min(data$Skor_Total)
max(data$Skor_Total)

table(data$Angkatan)
table(data$Semester)
table(data$`Jenis Kelamin`)

prop.table(table(data$`Jenis Kelamin`)) * 100


#====================================================
# 7. VISUALISASI DATA
#====================================================

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
    title = "Rata-Rata Skor Tiap Pernyataan",
    x = "Pernyataan",
    y = "Rata-rata Skor"
  ) +
  theme_minimal()


# Korelasi antar item

cor_item <- cor(item)

corrplot(
  cor_item,
  method = "color",
  type = "upper",
  tl.col = "black",
  tl.srt = 0,
  tl.cex = 0.7,
  addCoef.col = "black",
  number.cex = 0.6
)


#====================================================
# 8. PEMBOBOTAN TWO-STAGE CLUSTER SAMPLING
#====================================================

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


#====================================================
# 9. ANALISIS SURVEI
#====================================================

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