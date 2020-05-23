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

q1 <- qchisq(varepsilon_2, 50)
q1
q2 <- qchisq(1 - varepsilon_2, 50)
q2

X_ <- X - alpha # (Xi - alpha)
X_ <- X_ * X_ # (Xi - alpha)
numerator <- sum(X_) #\sum_{i=1}^n (X_i - \alpha)^2
numerator

left <- numerator / q1
right <- numerator / q2
left
right

