# Page no 270

Control <- c(131, 115, 124, 131, 122, 117, 88, 114, 150, 169)
SCI <- c(60, 150, 130, 180, 163, 130, 121, 119, 130, 148)
  
n1 <- length(Control)
n2 <- length(SCI)
variance1 <- var(Control)
variance2 <- var(SCI)
sd1 <- sqrt(variance1)
sd2 <- sqrt(variance2)
alpha <- 0.05

df1 <- n1-1
df2 <- n2-1
critical <- qf(1-alpha,df1,df2)
critical

test.statistic <- sd1^2 / sd2^2
test.statistic <- round(test.statistic,4)
test.statistic

var.test(Control,SCI)