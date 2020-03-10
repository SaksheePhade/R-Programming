# Page no 71

Disorder <- c("Neagative(A)", "BiPolar disorder(B)", "Unipolar(C)", "Unipolar abd bipolar(D)")
Early.18 <- c(28,19,41,53)
Later.18 <- c(35,38,44,60)
Family.history <- data.frame(disorder, early.18, later.18)
Family.history

total.early.18 <- sum(early.18)
total.later.18 <- sum(later.18)
population <- total.early.18 + total.later.18

probability <- total.early.18/population #P(A)
conditional.probability <- Family.history[1,2]/total.early.18 #P(A|E)

joint.probability <- probability * conditional.probability #P(A^B)
joint.probability