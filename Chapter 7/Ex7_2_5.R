# Page no 231

data <- c(33.38, 32.15, 33.99, 34.10, 33.97,
          34.34, 33.95, 33.85, 34.23, 32.73,
          33.46, 34.13, 34.45, 34.19, 34.05)
sample.size <- length(data)
sample.size
sample.mean <- mean(data)
sample.mean
variance <- var(data)
sd <- sqrt(variance)
sd
hypothesis.mean <- 34.5
alpha <- 0.05
df <- sample.size-1

z <- qt(alpha/2,df)
z
test.statistic <- (sample.mean - hypothesis.mean) / sqrt(variance/sample.size)
test.statistic

pvalue = 2 * pt(test.statistic,df)
pvalue <- round(pvalue,3)
pvalue