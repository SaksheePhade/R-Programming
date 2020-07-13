# Page no 242 

group <- c("thrombosis", "no_thrombosis")
mean_IgG <- c(59.01, 46.61)
sample.size <- c(53,54)
std.dev <- c(44.89, 34.85)
data <- data.frame(group, mean_IgG, sample.size, std.dev)
data
n1 <- sample.size[1]
n2 <- sample.size[2]
mean1 <- mean_IgG[1]
mean2 <- mean_IgG[2]
sd1 <- std.dev[1]
sd2 <- std.dev[2]
variance1 <- sd1^2
variance2 <- sd2^2
diff.hypothesis <- 0
alpha <- 0.01

critical  <- qnorm(1-alpha,0,1)
critical

test.statistic <- ((mean1-mean2) - diff.hypothesis)/sqrt((variance1/n1) + (variance2/n2)  )
test.statistic

pvalue <- 1 - pnorm(test.statistic,0,1)
pvalue