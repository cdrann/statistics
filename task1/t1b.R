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
q_ <- qt(varepsilon_2, n - 1) #-q 
q_
q <- -q_ #q
S0 <- sd(X) #выборочное среднеквадратическое отклонение 
S0
#(== sqrt(var(X)), где var(X) - несмещенная выборочная дисперсия)
left <- X_mean - (q * S0/sqrt(n))
right <- X_mean + (q * S0/sqrt(n))
left
right

