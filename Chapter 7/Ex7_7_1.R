# Page no 264

n <- 16
variance <- 670.81
hypothesis <- 600
alpha <- 0.05

df <- n-1

critical1 <- qchisq(alpha/2,df)
critical1
critical2 <- qchisq(alpha/2,df,lower.tail = FALSE)
critical2

test.statistic <- df * variance / hypothesis
test.statistic <- round(test.statistic,4)
test.statistic

statistical.decision <- "Fail to reject hypothesis as critical1 < test.statistic < critical2   ."
statistical.decision

pvalue <- pchisq(test.statistic,df)
pvalue