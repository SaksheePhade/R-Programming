# Page no 644

x <- matrix (c(22, 216, 18, 199) ,nrow =2, byrow =T)
x
rownames (x) <-c("Extreme exercise", "No exercise")
colnames (x) <-c("cases ", "noncases")
print (x)

total.e <- x[1, 1] +  x[1, 2]
total.ne <- x[2, 1] +  x[2, 2]
total.cases <- x[1, 1] + x[2, 1] 
total.noncases <- x[1, 2] +  x[2, 2] 
total1<- c(total.nr, total.h)
total <- total.nr + total.h
total

chisq_calc <- (total * (x[1,1]*x[2,2] - x[1,2]*x[2,1])^2)/
               (total.cases*total.noncases*total.e*total.ne)
chisq_calc

Pearson_without_correct <- chisq.test(x, correct = FALSE)
Pearson_without_correct

RR <- (x[1,1]/total.e)/(x[2,1]/total.ne)
RR

x <- matrix (c(18, 199, 22, 216) ,nrow =2, byrow =T)
x
rownames (x) <-c("No exercise", "Extreme exercise")
colnames (x) <-c("cases ", "noncases")
print (x)

library(mosaic)
relrisk(x, conf.level = 0.95, quiet = FALSE)