# Page no 713

therapist <- c(1:9)
A <- c(2, 2, 2, 1, 3, 1, 2, 1, 1)
B <- c(3 ,3 ,3 ,3 ,2 ,2 ,3 ,3 ,3)
C <- c(1 ,1 ,1 ,2 ,1 ,3 ,1 ,2 ,2)

data <- data.frame(therapist, A, B, C)
data
dt <- matrix(c(A, B, C), ncol = 3, byrow = FALSE )
dt
n <- length(A)
k <- 3
alpha <- 0.05
sum_A <- sum(A)
sum_B <- sum(B)
sum_C <- sum(C)

chisq_r <- ( (12/(n*k*(k+1)))*(sum_A^2 + sum_B^2 + sum_C^2) - k*n*(k+1) )
chisq_r

pvalue <- pchisq(alpha/2, k-1)
pvalue

friedman.test(dt)