# Page no 95

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

Prob.1.programs <- Probability.distribution[1,2]
Prob.2.programs <- Probability.distribution[2,2]
Prob.1_or_2.programs <- Prob.1.programs + Prob.2.programs
Prob.1_or_2.programs