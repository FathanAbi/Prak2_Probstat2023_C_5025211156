library("BSDA")
# a.
cat("a.")
hasil <- zsum.test(mean.x=23500, sigma.x = 3000, n.x = 100,  
          alternative = "less", mu = 25000,
          conf.level = 0.95)
cat("p_value =", hasil$p.value, "\n")

# c.
cat("c.")
cat("P_value", hasil$p.value, " sangat rendah < 0.0001%  (significance value)sehingga saya setuju dengan klaim (H0)")
