# Page no 72

Disorder <- c("Neagative(A)", "BiPolar disorder(B)", "Unipolar(C)", "Unipolar abd bipolar(D)")
Early.18 <- c(28,19,41,53)
Later.18 <- c(35,38,44,60)
Family.history <- data.frame(disorder, early.18, later.18)
Family.history

E <- sum(early.18)
total.later.18 <- sum(later.18)
population <- E + total.later.18
A <- Family.history[1,2:3]
A_intersection_E <- Family.history[1,2]

P.E <- E/population
P.A_intersection_E <- A_intersection_E/population
P.A_given_E <- P.A_intersection_E / P.E
P.A_given_E