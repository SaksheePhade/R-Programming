# Page no 103

prob <- 0.1
sample <- 25
prob_to_be_found.A <- 5
binom.probability.A <- pbinom(prob_to_be_found.A, sample, prob)
binom.probability.A

prob_to_be_found.B <- 6
binom.probability.B <- 1 - pbinom(prob_to_be_found.A, sample, prob)
binom.probability.B

binom.probability.C <- pbinom(9, sample, prob) - pbinom(5, sample, prob)
binom.probability.C

binom.probability.D <- pbinom(4, sample, prob) - pbinom(1, sample, prob)
binom.probability.D