# a.
cat("a. H0: μd = 0\n")
cat("   H1: μd ≠ 0\n")

# b. 
cat("b.")
n1 <- 20
n2 <- 27
cat("n bandung: ", n1, "\n")
cat("  n bali: ", n2, "\n")

# c.
cat("c.")
s12 <- 1.67 * 1.67
s22 <- 1.5 * 1.5
sp2 <- ((n1-1)*s12 + (n2-1)*s22) / (n1+n2-2)

x1<-3.64
x2<-2.79

t <- ((x1 - x2) - (0)) / (sqrt(sp2*(1/n2 + 1/n2)))
cat("t:", t, "\n")

# d.
cat("d.")
alpha <- 0.05
df <- n1+n2-2
critical_value <- qt(1 - alpha/2, df)
cat("critical value=", critical_value, "\n")

# e.
cat("e.")
cat("t berada diluar rejection region sehingga tidak menolak H0 (Terima H0)\n")

# f.
cat("f. kesimpulan: tidak terdapat perbedaan signifikan antara mean saham bandung dengan mean saham bali")
