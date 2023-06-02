hasil <- zsum.test(mean.x=23500, sigma.x = 3000, n.x = 100,  
          alternative = "less", mu = 25000,
          conf.level = 0.95)
cat("misal significance level = 1%, p_value =", hasil$p.value, "yang dimana < 0.01 (significance level\n")
cat("sehingga saya setuju dengan klaim (H0)")