# Page no 103

prob <- 0.55
sample <- 12
prob_to_be_found.A <- 7
binom.probability.A <- dbinom(prob_to_be_found.A, sample, prob)
binom.probability.A

prob_to_be_found.B <- 5
binom.probability.B <- pbinom(prob_to_be_found.B, sample, prob)
binom.probability.B

binom.probability.C <- 1 - pbinom(7, sample, prob)
binom.probability.C