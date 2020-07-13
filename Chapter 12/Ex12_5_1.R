# Page no 631

x <- matrix (c(21, 75, 19, 77) ,nrow =2, byrow =T)
x
rownames (x) <-c("Narcoleptic", "Healthy")
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

chisq.test(x, correct = FALSE)