# Page no 200

n1 <- 16
sd1 <- 8.1
n2 <- 4
sd2 <- 5.9
variance1 <- sd1^2
variance2 <- sd2^2
df1 <- n1-1
df2 <- n2-1
alpha <- 0.05

F1 <- qf(alpha/2, df1, df2)
F1 <- round(F1,4)
F1
F2 <- qf(1-alpha/2, df1, df2)
F2 <- round(F2,4)
F2

confidence.interval <- c((variance1/variance2)/F2,
                         (variance1/variance2)/F1 ) 
round(confidence.interval, 4)