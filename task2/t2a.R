varepsilon <- 0.18
sigma2 <- 0.7
sigma <- sqrt(sigma2)
alpha <- 2
n <- 30
X <- scan(file="data2.txt", sep=" ", dec=".")
unlist(X)
X <- sort(X)
q <- 1.1 #из таблицы  
Dn <- 0.887
nDn <- sqrt(n) * Dn
nDn
ks.test(X, pnorm)



#data:  X
#D = 0.51954, p-value = 4.666e-08
#alternative hypothesis: two-sided
