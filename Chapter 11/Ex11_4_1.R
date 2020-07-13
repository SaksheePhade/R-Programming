# Page no 561

disease <- c("OCADpresent", "OCADnotpresent")
males <- c(92, 21)
females <- c(15, 20)

data <- data.frame(disease, OCAD_p, OCAD_np)
data

cases <- c(males, females)
disease <- c(0 ,1 ,0 ,1)
disease = factor ( disease, labels = c("Ocad present" ,"OCAD not present"))
sex <- c(1 ,1 ,2 ,2)
sex = factor(sex , labels =c("male","female"))
df = data.frame(disease ,sex , cases )
df
xtabs(cases ~.,df) 
logistic <- glm(disease~sex, weights = cases, data = df, family = "binomial") 
summary (logistic)