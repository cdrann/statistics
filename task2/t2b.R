varepsilon <- 0.18
sigma2 <- 0.7
sigma <- sqrt(sigma2)
alpha <- 2
n <- 30
X <- scan(file="data2.txt", sep=" ", dec=".")
unlist(X)
sort(X) 
nu1 <- subset(X, X < 0.2)
nu1
nu1L <- length(nu1)
nu2 <- subset(X, X < 0.4 & X >= 0.2)
nu2
nu2L <- length(nu2)
nu3 <- subset(X, X < 0.6 & X >= 0.4)
nu3
nu3L <- length(nu3)
nu4 <- subset(X, X < 0.8 & X >= 0.6)
nu4
nu4L <- length(nu4)
nu5 <- subset(X, X < 1.0 & X >= 0.8)
nu5
nu5L <- length(nu5)
check <- nu1L + nu2L + nu3L + nu4L + nu5L
p_i <- 0.2
n_pi <- 0.2 * 30
n_pi
Psi_n <- (1/n_pi)*((nu1L - n_pi)^2 + (nu2L - n_pi)^2 + (nu3L - n_pi)^2 + (nu4L - n_pi)^2 + (nu5L - n_pi)^2)
Psi_n
k <- 5
q1 <- qchisq(1 -varepsilon, 5-1) #chi_{k-1}^2(q) = 1 - varepsilon
q1
