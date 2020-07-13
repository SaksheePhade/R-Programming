# Page no 650

x.stratum1 <- matrix (c(21, 11, 16, 6) ,nrow =2, byrow =T)
x.stratum1
rownames (x.stratum1) <-c("Present", "Absent")
colnames (x.stratum1) <-c("cases", "noncases")
print (x.stratum1)

total.p1 <- x.stratum1[1, 1] +  x.stratum1[1, 2]
total.a1 <- x.stratum1[2, 1] +  x.stratum1[2, 2]
total.cases1 <- x.stratum1[1, 1] + x.stratum1[2, 1] 
total.noncases1 <- x.stratum1[1, 2] +  x.stratum1[2, 2] 
total1 <- total.p1 + total.a1

x.stratum2 <- matrix (c(50, 14, 18, 6) ,nrow =2, byrow =T)
x.stratum2
rownames (x.stratum2) <-c("Present", "Absent")
colnames (x.stratum2) <-c("cases", "noncases")
print (x.stratum2)

total.p2 <- x.stratum2[1, 1] +  x.stratum2[1, 2];total.p2
total.a2 <- x.stratum2[2, 1] +  x.stratum2[2, 2];total.a2
total.cases2 <- x.stratum2[1, 1] + x.stratum2[2, 1] 
total.noncases2 <- x.stratum2[1, 2] +  x.stratum2[2, 2] 
total2 <- total.p2 + total.a2


e1 <- (x.stratum1[1,1]+x.stratum1[1,2])*
      (x.stratum1[1,1]+x.stratum1[2,1])/total1
e1
e2 <- (x.stratum2[1,1]+x.stratum2[1,2])*
      (x.stratum2[1,1]+x.stratum2[2,1])/total2
e2

v1 <- (total.p1*total.a1*total.cases1*total.noncases1)/
      ((total1^2)*(total1-1))
v1
v2 <- (total.p2*total.a2*total.cases2*total.noncases2)/
  ((total2^2)*(total2-1))
v2

chisq <- (((x.stratum1[1,1]+x.stratum2[1,1])-(e1+e2))^2)/(v1+v2)
chisq