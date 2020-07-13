# Page no 268

n1 <- 6
n2 <- 6
sd1 <- 30.62
sd2 <- 11.37
alpha <- 0.05

df1 <- n1-1
df2 <- n2-1
critical <- qf(1-alpha,df1,df2)
critical

test.statistic <- sd1^2 / sd2^2
test.statistic <- round(test.statistic,4)
test.statistic

statistical.decision <- "Reject hypothesis as test.statistic > critical."
statistical.decision

pvalue <- 1-pf(test.statistic,df1,df2)
pvalue