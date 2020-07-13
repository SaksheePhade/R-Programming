# Page no 239

Control <- c(131, 115, 124, 131, 122, 117, 88, 114, 150, 169)
SCI <- c(60, 150, 130, 180, 163, 130, 121, 119, 130, 148)
data <- data.frame(Control, SCI)
data
n1 <- length(Control)
n2 <- length(SCI)
mean1 <- mean(Control)
mean2 <- mean(SCI)
variance1 <- var(Control)
sd1 <- sqrt(variance1)
sd1
variance2 <- var(SCI)
sd2 <- sqrt(variance2)
sd2
diff.hypothesis <- 0
alpha <- 0.05
df <- (n1+n2)-2
t_critical  <- qt(alpha, df)
t_critical

test.statistic <- ((mean1-mean2) - diff.hypothesis)/sqrt((variance1/n1) + (variance2/n2)  )
test.statistic

pvalue = pt(test.statistic ,df) * 2
pvalue <- round(pvalue,4)
pvalue