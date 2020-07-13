# Page no 673

girls <- c(1:10)
score <- c(4, 5, 8, 8, 9, 6, 10, 7, 6, 6)
alpha <- 0.05
data <- data.frame(girls, score)
data
median <- median(score)
median
hypothesized.median <- 5

diff.hype <-score - hypothesized.median
sign.diff.hype <-sign(diff.hype)
newdata <- data.frame(girls, score, diff.hype, sign.diff.hype)
newdata

diff <- score - median
sign.diff <- sign(diff)
df <- data.frame(girls, score, diff, sign.diff)
df
s <- length(sign.diff[sign.diff==1])
s
parameter <- 0.5
test.statistic <- pbinom (1 ,9 ,parameter)
test.statistic
pvalue <- 2*test.statistic
pvalue

binom.test(1, 9, p = 0.5,
           alternative = c("two.sided", "less", "greater")
           , conf.level = 0.95)