# Page no 251

Preop <- c(22, 63.3, 96, 9.2, 3.1, 50, 33, 69, 64, 18.8, 0, 34)
Postop <- c(63.5, 91.5, 59, 37.8, 10.1, 19.6, 41, 87.8, 86, 55, 88, 40)
diff <- Postop - Preop
variance <- var(diff)
data <- data.frame(Preop, Postop, diff)
data
diff.hypothesis <- 0

alpha <- 0.05
df <- length(diff)-1
t_critical <- qt(1-alpha,df)
t_critical

test.statistic <- (mean(diff) - diff.hypothesis)/sqrt(variance/length(diff))
test.statistic

x = seq (-4 ,4, length =10000)
y = dnorm (x,0,1)
plot (x,y,type = "l")

x = seq (t_critical ,4 , length =10000)
y = dnorm (x,0,1)
rejection.region <- polygon (c(t_critical,x ,4) ,c(0,y ,0) ,col=" gray ")

pvalue <- 1-pt(test.statistic,df)
pvalue <- round(pvalue,3)
pvalue

decision <- "Reject"
decision