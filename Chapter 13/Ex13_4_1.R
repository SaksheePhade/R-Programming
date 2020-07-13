# Page no 683

data <- c(4.91 ,4.10 ,6.74 ,7.27 ,7.42 ,7.50 ,6.56 ,4.64 
                ,5.98 ,3.14 ,3.23 ,5.80 ,6.17 ,5.39 ,5.77)
mean <- mean(data)
mean
hypothesis.mean <- 5.05
alpha <- 0.05

diff <- data - hypothesis.mean
rank.diff <- rank(abs(diff))
sign.rank.diff <- sign(diff) * rank.diff
test.statistic <- data.frame(data, diff, rank.diff, sign.rank.diff)
test.statistic

Tplus <- sum(sign.rank.diff[sign(sign.rank.diff)==1])
Tplus
Tminus <- abs(sum(sign.rank.diff[sign(sign.rank.diff)==-1]))
Tminus

wilcox.test(data,
            alternative = "two.sided",
            conf.level = 0.95, conf.int = TRUE, correct = FALSE)