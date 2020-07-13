# Page no 706

cell_count <-c(12.22 ,28.44 ,28.13 ,38.69 ,54.91 ,3.68 ,
              4.05 ,6.47 ,21.12 ,3.33 ,54.36 ,27.87, 66.81,
              46.27, 30.19)
n <- length(cell_count)
alpha <- 0.01

group_type <-c(rep(1,5) ,rep(2,5) ,rep (3,5))
group <- factor(group_type, labels=c("Air", "Benzaldehyde",
                                     "Acetaldehyde"))
data <-data.frame (group , cell_count)
data

data_rank <- data.frame(group, cell_count, rank(cell_count))
data_rank

r1 <- sum(rank(cell_count)[group=="Air"])
r1
r2 <- sum(rank(cell_count)[group=="Benzaldehyde"])
r2
r3 <- sum(rank(cell_count)[group=="Acetaldehyde"])
r3

H <- ( (12/(n*(n+1))) * (r1^2/5 + r2^2/5 + r3^2/5) - 3*(n+1) )
H

kruskal.test(cell_count~group) 