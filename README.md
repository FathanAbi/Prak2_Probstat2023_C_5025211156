# Prak2_Probstat2023_C_5025211156
Prkatikum ProbStat Modul 2

Fathan Abi Karami / 5025211156

# SOAL1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat 
kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 
responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan 
aktivitas.

| Responden | X | Y | 
| :---: | :---: | :---: | 
| 1 | 78 | 100 | 
| 2 | 75 | 95 | 
| 3 | 67 | 70 | 
| 4 | 77 | 90 | 
| 5 | 70 | 90 | 
| 6 | 72 | 90 | 
| 7 | 78 | 89 | 
| 8 | 70 | 100 | 
| 9 | 77 | 100 | 


Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari
responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah 
melakukan aktivitas 𝐴 sebanyak 70.
## poin A
```R
# a. Carilah Standar deviasi dari data selisih pasangan pengamatan tabel diatas
cat("a.")
d <- c(78-100, 75-95, 67-70, 77-90, 70-90, 72-90, 78-89, 70-100, 77-100)
standardDeviasi <- sd(d)
cat("Standar Deviasi:", standardDeviasi, "\n")
```
melakukan input data kemudian mencari standard deviasi dengan sd()
## Poin B
```R
# b. Carilah nilai t (p-value)
cat("b.")
x <- c(78, 75, 67, 77, 70, 72, 78, 70, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 100, 100)
hasil <- t.test(x, y)
p_value <- hasil$p.value
cat("p value:", p_value, "\n")
```
masukkan input data kemudian gunakan t.test untuk mendapatkan p_value. 
## Poin C
```R
# c. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam
#    hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika
#    diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang
#    signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah
#    melakukan aktivitas 𝐴”.

cat("c.p_value adalah", p_value, "dimana < level signifikan. kesimpulan yang bisa")
cat("ditarik adalah menolak H0, atau ada pengaruh yang signifikan secara statitiska")
cat("dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴")
```
buat kesimpulan

## Output
![image](https://github.com/FathanAbi/Prak2_Probstat2023_C_5025211156/assets/90834092/64ab2830-128f-4150-bc9c-45b5eff5dd1b)

# SOAL2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per 
tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak 
diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak 
menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3.000 kilometer
(kerjakan menggunakan library seperti referensi pada modul).

## Poin A
Apakah Anda setuju dengan klaim tersebut? Jelaskan
```R
# a.
cat("a.")
hasil <- zsum.test(mean.x=23500, sigma.x = 3000, n.x = 100,  
          alternative = "less", mu = 25000,
          conf.level = 0.95)
cat("p_value =", hasil$p.value, "\n")
```

gunakan zsum.test untuk mendapatkan p_value

## Poin C
Buatlah kesimpulan berdasarkan p-value yang dihasilkan!
```R
# c.
cat("c.")
cat("P_value", hasil$p.value, " sangat rendah < 0.0001%  (significance value)sehingga saya setuju dengan klaim (H0)")
```
karena P-value sangat rendah maka terima H0

## Output
![image](https://github.com/FathanAbi/Prak2_Probstat2023_C_5025211156/assets/90834092/2718182d-3766-485c-92e0-3e4dde0611d1)

# soal3
Diketahui perusahaan memiliki seorang data analyst yang ingin memecahkan
permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
didapatkanlah data berikut dari perusahaan saham tersebut.

| Nama Kota/Atribut | Bandung | Bali | 
| :---: | :---: | :---: | 
| Jumlah Saham | 20 | 27 | 
| Sampel Mean | 3.64 | 2.79 | 
| Sampel Standar Deviasi | 1.67 | 1.5 | 

Dari data di atas berilah keputusan serta kesimpulan yang didapatkan. Asumsikan 
nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? 
Buatlah:

## Poin A
H0 dan H1
```R
# a.
cat("a. H0: μd = 0\n")
cat("   H1: μd ≠ 0\n")
```
buat klaim bahwa tidak ada perbedaan antara rata-rata saham di bali dengan di bandung 
## Poin B
Hitung sampel statistik
```R
# b. 
cat("b.")
n1 <- 20
n2 <- 27
cat("n bandung: ", n1, "\n")
cat("  n bali: ", n2, "\n")
```
sesuai pada tabel

## Poin C
Lakukan uji statistik (df =2)
```R
cat("c.")
s12 <- 1.67 * 1.67
s22 <- 1.5 * 1.5
sp2 <- ((n1-1)*s12 + (n2-1)*s22) / (n1+n2-2)

x1<-3.64
x2<-2.79

t <- ((x1 - x2) - (0)) / (sqrt(sp2*(1/n2 + 1/n2)))
cat("t:", t, "\n")
```
hitung s_pool, lalu hitung t value

## Poin D
Nilai kritikal
```R
# d.
cat("d.")
alpha <- 0.05
df <- n1+n2-2
critical_value <- qt(1 - alpha/2, df)
cat("critical value=", critical_value, "\n")
```
hitung nilai kritilal dengan qt()

## Poin E
keputusan
```R
# e.
cat("e.")
cat("t berada diluar rejection region sehingga tidak menolak H0 (Terima H0)\n")
```
karena diluar rejection region maka terima H0

## Poin F
Kesimpulan
```R
cat("f. kesimpulan: tidak terdapat perbedaan signifikan antara mean saham bandung dengan mean saham bali")
```

## Output
![image](https://github.com/FathanAbi/Prak2_Probstat2023_C_5025211156/assets/90834092/28e5ae31-1104-4bed-8f17-b37f0e130bdc)

# SOAL4
 Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk 
mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca 
pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan 
dilakukan sebanyak 27 kali dan didapat data sebagai berikut: 
https://drive.google.com/file/d/1pICtCrf61DRU86LDPQDJmcKiUMVt9ht4/view. 
Dengan data tersebut:

## Poin A
Buatlah plot sederhana untuk visualisasi data.
```R
# a. 
cat("a. \n\n")
data <- read.csv("C:\\Users\\abika\\Downloads\\GTL.csv")


data$Temp <- factor(data$Temp,
                       levels = c(100, 125, 150),
                       labels = c("T100", "T125", "T150"))

data$Glass <- factor(data$Glass,
                    levels = c("A", "B", "C"),
                    labels = c("GA", "GB", "GC"))


table(data$Glass, data$Temp)

interaction.plot(x.factor = data$Temp, trace.factor =
                    data$Glass,
                  response = data$Light, fun = mean,
                  type = "b", legend = TRUE,
                  xlab = "Temp", ylab="Light",
                  pch=c(1,19), col = c("#00AFBB", "#E7B800"))
```
ubah temp dan glass menajadi faktor. gunakan interaction.plot() unutuk men-plot data

## Poin B
Lakukan uji ANOVA dua arah
```R
# b. 
cat("b.\n")
res.aov2 <- aov(Light ~ Temp + Glass, data = data)
summary <- summary(res.aov2)
print(summary)

cat("\ndidapat nilai p  temp adalah 1.96e-10 (signifikan)\ndan nilai p glass adalah 0.0109 (signifikan)")
cat("\n\n")
```   
gunakan res.aov2 untuk melakukan anova 2 arah. lalu print sumarry nya

## Poin C
Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap 
perlakuan (kombinasi kaca pelat muka dan suhu operasi)
```R
#c
cat("c.\n")
result <- aggregate(Light ~ Glass + Temp, data = data, FUN = function(x) c(mean = mean(x), sd = sd(x)))
print(result)
```
gunakan fungsi agregate untuk mengelompokkan kolom "light" dengan faktor "Glass" dan "Temp". specify FUN argumen sebagai
function untuk menghitung mean (mean()) dan standard deviation (sd())

## Output
plot:

![image](https://github.com/FathanAbi/Prak2_Probstat2023_C_5025211156/assets/90834092/728f7d5f-94cf-4a39-92be-c38ed11bb4bd)

output:

![image](https://github.com/FathanAbi/Prak2_Probstat2023_C_5025211156/assets/90834092/473e1290-8b9d-45aa-9d9a-40511ed91a63)


