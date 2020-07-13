# Page no 240

n1 <- 15
n2 <- 30
mean1 <- 19.16
mean2 <- 9.53
sd1 <- 5.29
sd2 <- 2.69
variance1 <- sd1^2
variance2 <- sd2^2
diff.hypothesis <- 0
alpha <- 0.05
df <- n1+n2-2

t_critical  <- qt(1-alpha/2,df)
t_critical

test.statistic <- ((mean1-mean2) - diff.hypothesis)/sqrt((variance1/n1) + (variance2/n2)  )
test.statistic

pvalue <- 1 - pnorm(test.statistic,0,1)
pvalue