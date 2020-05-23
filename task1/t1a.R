varepsilon <- 0.18
sigma2 <- 0.7
sigma <- sqrt(sigma2)
alpha <- 2
n <- 50
X <- scan(file="data1.txt", sep=" ", dec=".")
unlist(X)
X_mean <- mean(X, na.rm = TRUE, trim = 0)
X_mean
varepsilon_2 <- varepsilon / 2
q_ <- qnorm(varepsilon_2, mean = 0, sd = 1) #-q 
q <- -q_ #q
left <- X_mean - (q * sigma/sqrt(n))
right <- X_mean + (q * sigma/sqrt(n))
left
right

#1a