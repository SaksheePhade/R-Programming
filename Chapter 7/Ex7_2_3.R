# Page no 228

days <- c(14, 9, 18, 26, 12, 0, 10, 4, 8, 21, 28, 24, 24, 2, 3, 14, 9)

sample.size <- length(days)
sample.mean <- mean(days)
sample.mean
variance <- var(days)
sqrt(variance)
hypothesis.mean <- 15
alpha <- 0.05
df <- sample.size-1

z <- qt(alpha/2, df)
z
z1 <- z
z2 <- -z
test.statistic <- (sample.mean - hypothesis.mean) / sqrt(variance/sample.size)
test.statistic

x = seq (-4 ,4, length =10000)
y = dnorm (x,0,1)
plot (x,y,type = "l")

x1 = seq (-4 ,z1 , length =10000)
y1 = dnorm (x1,0,1)
rejection.region1 <- polygon (c(-4,x1 ,z1) ,c(0,y1 ,0) ,col=" gray ")

x2 = seq (z2 ,4 , length =10000)
y2 = dnorm (x2,0,1)
rejection.region2 <- polygon (c(z2,x2 ,4) ,c(0,y2 ,0) ,col=" gray ")

pvalue = 2* pt(test.statistic ,df)
pvalue