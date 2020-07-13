# Page no 626

x <- matrix (c(131, 52, 14, 36) ,nrow =2, byrow =T)
x
rownames (x) <-c("Fallers", "Nonfallers")
colnames (x) <-c("Yes ", "No")
print (x)

total.f <- x[1, 1] +  x[1, 2]
total.nf <- x[2, 1] +  x[2, 2]
total.yes <- x[1, 1] + x[2, 1] 
total.no <- x[1, 2] +  x[2, 2] 
total1<- c(total.f, total.nf)
total <- total.f + total.nf
total
yes <- c(131, 14)
Exp_f_yes <- total1*total.yes/total
no <- c(52, 36)
Exp_f_no <- total1*total.no/total
type <- c("Fallers", "Nonfallers")
newdf <- data.frame(type, yes, Exp_f_yes, no, Exp_f_no)
newdf

chisq_calc <- (total * (x[1,1]*x[2,2] - x[1,2]*x[2,1])^2)/
               (total.yes*total.no*total.f*total.nf)
chisq_calc
chisq.test(x)