# Page no 708

book_value <-c(1735 ,1520 ,1476 ,1688 ,1702 ,2667 ,1575 ,1602 ,
               1530 ,1698 ,5260 ,4455 ,4480, 4325, 5075, 5225, 
               4613, 4887, 2790, 2400, 2655, 2500, 2755, 2592, 
               2601, 1648, 1700, 3475, 3115, 3050, 3125, 3275, 
               3300, 2730, 6090, 6000, 5894, 5705, 6050, 6150, 
               5110)
n <- length(book_value)
n
group_type <-c(rep(1,10) ,rep(2,8) ,rep (3,9), rep(4,7), rep(5,7))
group <- factor(group_type, labels=c("A", "B", "C", "D", "E"))
group
data <-data.frame (group , book_value)
data
data_rank <- data.frame(group, book_value, rank(book_value))
data_rank
r1 <- sum(rank(book_value)[group=="A"])
r1
r2 <- sum(rank(book_value)[group=="B"])
r2
r3 <- sum(rank(book_value)[group=="C"])
r3
r4 <- sum(rank(book_value)[group=="D"])
r4
r5 <- sum(rank(book_value)[group=="E"])
r5

H <- ( (12/(n*(n+1))) * (r1^2/10 + r2^2/8 + r3^2/9 + r4^2/7 + r5^2/7)- 
        3*(n+1) )
H

kruskal.test(book_value~group) 