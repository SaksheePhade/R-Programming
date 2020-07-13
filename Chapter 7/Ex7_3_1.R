# Page no 237

n1 <- 12
n2 <- 15
mean1 <- 4.5
mean2 <- 3.4
variance1 <- 1
variance2 <- 1.5
diff.hypothesis <- 0
alpha <- 0.05

z1 <- qnorm(alpha/2, 0,1)
z1
z2 <- qnorm(1-alpha/2,0,1)
z2

test.statistic <- ((mean1-mean2) - diff.hypothesis)/sqrt((variance1/n1) + (variance2/n2)  )
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

pvalue = 1 - pnorm (test.statistic ,0 ,1)
pvalue <- round(pvalue,2)
pvalue