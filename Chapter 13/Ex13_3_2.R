# Page no 677

score_x <- c (1.5 ,2 ,3.5 ,3 ,3.5 ,2.5 ,2 ,1.5 ,1.5 ,2 ,3 ,2)
score_y <- c (2 ,2 ,4 ,2.5 ,4 ,3 ,3.5 ,3 ,2.5 ,2.5 ,2.5 ,2.5)

diff <- score_x - score_y
diff
sdiff <-sign(diff)
sdiff

data <- data.frame(score_x, score_y, diff, sdiff)
data

n <- length(sdiff[sdiff==1])
n

parameter <- 0.5
test.statistic <- pbinom (n ,11 ,parameter)
test.statistic
pvalue <- 2*test.statistic
pvalue

binom.test(n, 11, p = 0.5,
           alternative = c("two.sided", "less", "greater")
           , conf.level = 0.95)