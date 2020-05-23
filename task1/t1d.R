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

q1 <- qchisq(varepsilon_2, n - 1)
q1
q2 <- qchisq(1 - varepsilon_2, n - 1)
q2

S0pow2 <- var(X) # S0^2 несмещенная выборочная дисперсия
Spow2 <- S0pow2 * ((n-1)/n) # из S0^2 = nS^2/(n-1)

left <- (n*Spow2) / q2
right <- (n*Spow2) / q1
left
right

