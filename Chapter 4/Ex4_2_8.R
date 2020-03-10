# Page no 98

Number_of_programs <- c(1:8)
Frequency <- c(62, 47, 39, 39, 58, 37, 4, 11)
Assistance <- data.frame(Number_of_programs, Frequency)
Assistance
total  <- sum(Frequency)
total

prob = function(freq, total) {
  probability = round(freq/total, digits = 4)
}

i=0
for (n in Frequency) {
  n <- prob(n, total)
  i = i + 1
  Frequency[i] <- n
}
Prob.x <- Frequency
Number_of_programs <- c(1:8)

Probability.distribution <- data.frame(Number_of_programs, Prob.x)
Probability.distribution
total.prob <- sum(Prob.x)
total.prob

mean.prob.dist <- sum(Number_of_programs * Prob.x)
mean.prob.dist

variance.prob.dist <- sum( (Number_of_programs - mean.prob.dist)^2 * Prob.x  )
variance.prob.dist

standard.deviation <- sqrt(variance.prob.dist)
standard.deviation  