# Page no 278

sd <- 15
N <- 20
alpha <- 0.05
H0.mu <- 65
mu1 <- 55

z0 <- qnorm(1-alpha/5,0,1)
z0
z1 <- qnorm(1-alpha,0,1)
z1

n <- ((z0+z1)*sd / (H0.mu-mu1))^2
n <- ceiling(n)
n
C1 <- H0.mu - z0*sd/sqrt(n)
C1
C2 <- mu1 + z1*sd/sqrt(n)
C2