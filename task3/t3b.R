varepsilon <- 0.18
varepsilon_2 <- varepsilon / 2
sigma2 <- 0.7
sigma <- sqrt(sigma2)
alpha <- 2


X <- scan(file="X.txt", sep=" ", dec=".")
unlist(X)
n <- length(X)

Y <- scan(file="Y.txt", sep=" ", dec=".")
unlist(Y)
m <- length(Y)

X_mean <- mean(X, na.rm = TRUE, trim = 0)
X_mean

Y_mean <- mean(Y, na.rm = TRUE, trim = 0)
Y_mean

S0pow2_X <- var(Y) # S0^2 несмещенная выборочная дисперсия
Spow2_X <- S0pow2_X * ((n-1)/n) # из S0^2 = nS^2/(n-1)

S0pow2_Y <- var(Y) # S0^2 несмещенная выборочная дисперсия
Spow2_Y <- S0pow2_Y * ((m-1)/m) # из S0^2 = nS^2/(n-1)

q_ <- qt(varepsilon_2, n + m -2)
q_
q <- -q_
q

psi = (X_mean - Y_mean)/(sqrt((1/n)+(1/m)) * sqrt((n*Spow2_X + m*Spow2_Y)/(n+m-2)))
psi

