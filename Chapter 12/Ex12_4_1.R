# Page no 621

x <- matrix (c(260 ,299 ,15 ,41 ,7 ,14) ,nrow =3, byrow =T)
x
rownames (x) <-c("White", "Black ", "Other ")
colnames (x) <-c("Yes ", "No")
print (x)

total.white <- x[1, 1] +  x[1, 2]
total.white
total.black <- x[2, 1] +  x[2, 2]
total.black
total.other <- x[3, 1] +  x[3, 2]
total.other
total.yes <- x[1, 1] + x[2, 1] + x[3, 1]
total.yes
total.no <- x[1, 2] +  x[2, 2] + x[3, 2]
total.no
total1<- c(total.white, total.black, total.other)
total2 <- c(total.yes, total.no)
total <- total.black + total.other + total.white
total
yes <- c(260, 15, 7)
Exp_f_yes <- total1*total.yes/total
no <- c(299, 41, 14)
Exp_f_no <- total1*total.no/total
type <- c("White", "Black ", "Other")
newdf <- data.frame(type, yes, Exp_f_yes, no, Exp_f_no)
newdf

chisq.test (x)