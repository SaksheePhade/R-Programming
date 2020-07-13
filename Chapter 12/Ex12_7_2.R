# Page no 647

x <- matrix (c(64, 342, 68, 3496) ,nrow =2, byrow =T)
x
rownames (x) <-c("Smoked", "Not smoked")
colnames (x) <-c("cases ", "noncases")
print (x)

total.e <- x[1, 1] +  x[1, 2]
total.ne <- x[2, 1] +  x[2, 2]
total.cases <- x[1, 1] + x[2, 1] 
total.noncases <- x[1, 2] +  x[2, 2] 
total1<- c(total.nr, total.h)
total <- total.nr + total.h
total

Pearson_without_correct <- chisq.test(x, correct = FALSE)
Pearson_without_correct

OR <- (x[1,1]*x[2,2])/(x[1,2]*x[2,1])
OR

x <- matrix (c(68, 3496, 64, 342) ,nrow =2, byrow =T)
x
rownames (x) <-c("Not smoked", "Smoked")
colnames (x) <-c("cases ", "noncases")
print (x)

library(mosaic)
relrisk(x, conf.level = 0.95, quiet = FALSE)
oddsRatio(x, conf.level = 0.95, quiet = FALSE)