# Page no 614

category <- c(1:5)
x <- c("Dec","Jan","Feb" ,"Mar" ,"Apr")
f <- c (62 ,84 ,17 ,16 ,21)
prop <- 1/length(x)

Obs_f <- f 
Exp_f <- prop * sum(f) 
contri <- (Obs_f-Exp_f)^2/Exp_f

df <- data.frame(category, Obs_f, prop, Exp_f, contri)
df

chi_sq <- sum((Obs_f-Exp_f)^2/Exp_f) 
chi_sq
pvalue <- pchisq(0.05, length(x)-1) 
pvalue