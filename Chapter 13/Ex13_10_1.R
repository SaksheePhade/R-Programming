# Page no 720

x <- c(20 ,21 ,22 ,24 ,27 ,30 ,31 ,33 ,35 ,38 ,40 ,
       42 ,44 ,46 ,48 ,51 ,53 ,55 ,58 ,60)
y <- c(98 ,75 ,95 ,100 ,99 ,65 ,64 ,70 ,85 ,74 ,68 ,
       66 ,71 ,62 ,69 ,54 ,63 ,52 ,67 ,55)
n <- length(x)
rank_x <- rank(x)
rank_y <- rank(y)
d <- rank_x - rank_y
d_sq <- d^2
data <- data.frame(x, y, rank_x, rank_y, d, d_sq)
data

r_s <- 1 - ( (6*sum(d_sq))/(n*(n^2-1)) )
r_s

cor.test(x, y, method = "spearman")