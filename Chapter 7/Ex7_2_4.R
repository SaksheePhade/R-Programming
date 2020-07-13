# Page no 231

sample.size <- 157
sample.mean <- 146
sd <- 27
variance <- sd^2
hypothesis.mean <- 140
alpha <- 0.05

z <- qnorm(1-alpha, 0,1)
z
test.statistic <- (sample.mean - hypothesis.mean) / sqrt(variance/sample.size)
test.statistic

x = seq (-4 ,4, length =10000)
y = dnorm (x,0,1)
plot (x,y,type = "l")

x = seq (z ,4 , length =10000)
y = dnorm (x,0,1)
rejection.region <- polygon (c(z,x ,4) ,c(0,y ,0) ,col=" gray ")

pvalue = 1 - pnorm(test.statistic,0,1)
pvalue