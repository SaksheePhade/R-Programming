# Page no 692

exposed <- c(14.4, 14.2, 13.8, 16.5, 14.1, 16.6, 15.9, 15.6, 14.1, 15.3,
             15.7, 16.7, 13.7, 15.3, 14)
unexposed <- c(17.4 ,16.2 ,17.1 ,17.5 ,15 ,16 ,16.9 ,15 ,16.3 ,16.8)
x <- sort(exposed)
y <- sort(unexposed)
d <- c(x,y)
rank <- rank(d)
rank

group_type <-c(rep(1,15) ,rep(2,10))
group <- factor(group_type, labels=c("Exposed", "Unexposed"))

data <- data.frame(group, d, rank)
data

sum.rank <- sum(rank[group=="Exposed"])
test.statistic <- sum.rank - ((length(x)*(length(x)+1))/2)
test.statistic
sum(rank)

wilcox.test(exposed, unexposed, conf.level=0.95, 
                conf.int =TRUE)