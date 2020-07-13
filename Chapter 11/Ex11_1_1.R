# Page no 542

Conc <- c(0.30, 2.75, 2.27, 2.37, 1.12, 0.60, 0.61, 0.89, 
          0.33, 0.85, 2.18, 3.59, 0.28, 1.90, 1.71, 0.85, 
          1.53, 2.25, 0.88, 0.49, 4.35, 0.67, 2.74, 0.79, 
          6.94)
log_conc <- round(log10(Conc), 2)
log_conc
case_no <- c(1:25)
data <- data.frame(Conc, log_conc)
data

library (car)
Boxplot (data , ylab="Concentration")