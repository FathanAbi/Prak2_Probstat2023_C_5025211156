# a. Carilah Standar deviasi dari data selisih pasangan pengamatan tabel diatas
cat("a.")
d <- c(78-100, 75-95, 67-70, 77-90, 70-90, 72-90, 78-89, 70-100, 77-100)
standardDeviasi <- sd(d)
cat("Standar Deviasi:", standardDeviasi, "\n")

# b. Carilah nilai t (p-value)
cat("b.")
x <- c(78, 75, 67, 77, 70, 72, 78, 70, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 100, 100)
hasil <- t.test(x, y)
p_value <- hasil$p.value
cat("p value:", p_value, "\n")

# c. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam
#    hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika
#    diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang
#    signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah
#    melakukan aktivitas 𝐴”.

cat("c.p_value adalah", p_value, "dimana < level signifikan. kesimpulan yang bisa")
cat("ditarik adalah menolak H0, atau ada pengaruh yang signifikan secara statitiska")
cat("dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴")




