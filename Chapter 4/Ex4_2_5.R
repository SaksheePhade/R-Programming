# Page no 97

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
sum = 0
for (n in Frequency) {
  n <- prob(n, total)
  i = i + 1
  sum = n + sum
  Frequency[i] <- sum
}
cumulative.freq <- Frequency
Number_of_programs <- c(1:8)

cumulative.Probability.distribution <- data.frame(Number_of_programs, cumulative.freq)
cumulative.Probability.distribution

Prob.fewer_than_4.programs <- cumulative.Probability.distribution[3,2]
Prob.fewer_than_4.programs