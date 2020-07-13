# Page no 226

sample.size <- 10
sample.mean <- 27
assume.variance <- 20
hypothesis.mean <- 30
alpha <- 0.05

rej <- qnorm(alpha, 0,1)
rej

test.statistic <- (sample.mean - hypothesis.mean) / sqrt(assume.variance/sample.size)
test.statistic

x = seq (-4 ,4, length =10000)
y = dnorm (x,0,1)
plot (x,y,type = "l")

x = seq (-4 ,rej , length =10000)
y = dnorm (x,0,1)
rejection.region <- polygon (c(-4,x ,rej) ,c(0,y ,0) ,col=" gray ")

pvalue = pnorm (test.statistic ,0 ,1)
pvalue