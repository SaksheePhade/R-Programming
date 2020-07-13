# Page 136

N <- 5
ages <- c(6, 8, 10, 12, 14)

mean <- mean(ages)
mean
variance <- var(ages)
variance

library(gtools)
all.samples <- permutations(n=5,r=2,v=ages,repeats.allowed=T)
all.samples

xbar <- c(6:14)
freq <- c(1,2,3,4,5,4,3,2,1)
sampling.distribution <- data.frame(xbar, freq)
sampling.distribution
total.freq <- sum(freq)
total.freq

barplot(freq, space = NULL, names.arg = xbar, xlab = "X bar", ylab = "Frequency")