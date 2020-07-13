# Page no 222

sample.size <- 10
sample.mean <- 27
assume.variance <- 20
hypothesis.mean <- 30
alpha <- 0.05
z1 <- qnorm(alpha/2, 0,1)
z1
z2 <- qnorm(1-alpha/2,0,1)
z2
test.statistic <- (sample.mean - hypothesis.mean) / sqrt(assume.variance/sample.size)
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

z <- (sample.mean -hypothesis.mean)/ sqrt (assume.variance/sample.size)
z
z.critical <- z1
pvalue = 2* pnorm (z ,0 ,1)
pvalue