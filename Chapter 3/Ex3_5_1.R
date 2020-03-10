# Page no 81

test.result <- c("Positive(T)", "Negative(~T)")
yes.D <- c(436, 14)
no.Dbar <- c(5, 495)
Alzheimer.diagnosis <- data.frame(test.result, yes.D, no.Dbar)
Alzheimer.diagnosis
total.yes.D <- sum(yes.D)
D <- total.yes.D
total.no.Dbar <- sum(no.Dbar)
Dbar <- total.no.Dbar
total <- total.yes.D + total.no.Dbar
total

sensitivity <- Alzheimer.diagnosis[1,2] / total.yes.D
sensitivity
specificity <- Alzheimer.diagnosis[2,3] / total.no.Dbar
specificity
Prob.Tbar_event_Dbar <- specificity

Prob.positive.hasdisease <- Alzheimer.diagnosis[1,2] / total.yes.D
Prob.positive.hasdisease
Prob.T_event_D <- Prob.positive.hasdisease
Prob.positive.nodisease <- Alzheimer.diagnosis[1,3] / total.no.Dbar
Prob.positive.nodisease
Prob.T_event_Dbar <- Prob.positive.nodisease
Prob.Tbar_event_D <- Alzheimer.diagnosis[2,2] / D
Prob.Tbar_event_D

Prob.D <- 0.113
Prob.Dbar <- 1 - Prob.D

Prob.D_event_T <- (Prob.T_event_D * Prob.D) / ( (Prob.T_event_D * Prob.D) + 
                                                 (Prob.T_event_Dbar * Prob.Dbar) )
Prob.D_event_T

Prob.Dbar_event_T <- (Prob.Tbar_event_Dbar * Prob.Dbar) / ( (Prob.Tbar_event_Dbar * Prob.Dbar) + 
                                                     (Prob.Tbar_event_D * Prob.D) )
Prob.Dbar_event_T