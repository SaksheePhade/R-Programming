# Page no 638

x <- matrix (c(2, 7, 8, 4) ,nrow =2, byrow =T)
x
rownames (x) <-c("Naive", "Experienced")
colnames (x) <-c("Yes ", "No")
print (x)

total.nr <- x[1, 1] +  x[1, 2]
total.h <- x[2, 1] +  x[2, 2]
total.yes <- x[1, 1] + x[2, 1] 
total.no <- x[1, 2] +  x[2, 2] 
total1<- c(total.nr, total.h)
total <- total.nr + total.h
total

chisq_calc <- (total * (x[1,1]*x[2,2] - x[1,2]*x[2,1])^2)/
               (total.yes*total.no*total.f*total.nf)
chisq_calc

Pearson_without_correct <- chisq.test(x, correct = FALSE)
Pearson_without_correct
continuity_correction <- chisq.test(x)
continuity_correction
fisher_exact <- fisher.test(x)
fisher_exact