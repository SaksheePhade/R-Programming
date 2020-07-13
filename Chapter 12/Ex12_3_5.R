# Page no 614

dominant <- 43
heterozygous <- 125
recessive <- 32

Obs_f <- c(dominant, heterozygous, recessive)
Exp_f <- c(50, 100, 50)
contri <- (Obs_f-Exp_f)^2/Exp_f

df <- data.frame(Obs_f, Exp_f, contri)
df

chi_sq <- sum((Obs_f-Exp_f)^2/Exp_f) 
chi_sq
pvalue <- pchisq(0.05, length(x)-1) 
pvalue