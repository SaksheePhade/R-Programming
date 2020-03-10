#Page no 75

Disorder <- c("Neagative(A)", "BiPolar disorder(B)", "Unipolar(C)", "Unipolar abd bipolar(D)")
Early.18 <- c(28,19,41,53)
Later.18 <- c(35,38,44,60)
Family.history <- data.frame(disorder, early.18, later.18)
Family.history

total.early.18 <- sum(early.18)
total.later.18 <- sum(later.18)
population <- total.early.18 + total.later.18

P.early_intersection_A <- Family.history[1,2]/population
P.early_intersection_B <- Family.history[2,2]/population
P.early_intersection_C <- Family.history[3,2]/population
P.early_intersection_D <- Family.history[4,2]/population

P.early.18 <- P.early_intersection_A + P.early_intersection_B + 
              P.early_intersection_C + P.early_intersection_D
P.early.18