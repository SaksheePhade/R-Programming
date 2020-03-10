# Page no 70

Disorder <- c("Neagative(A)", "BiPolar disorder(B)", "Unipolar(C)", "Unipolar abd bipolar(D)")
Early.18 <- c(28,19,41,53)
Later.18 <- c(35,38,44,60)
Family.history <- data.frame(disorder, early.18, later.18)
Family.history

total.early.18 <- sum(early.18)
total.later.18 <- sum(later.18)
population <- total.early.18 + total.later.18
early.negative <- Family.history[1,2] #A
early.negative
conditional.probability <- early.negative/total.early.18 #P(A|E)
conditional.probability