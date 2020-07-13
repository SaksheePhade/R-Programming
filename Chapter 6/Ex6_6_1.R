# Page no 187

N1 <- 68
N2 <- 255
n1 <- 31
n2 <- 53
alpha <- 0.01
p1cap <- n1/N1
p2cap <- n2/N2
diff.pcap <- p1cap-p2cap
diff.pcap <- round(diff.pcap,4)

std.error <- sqrt( (p1cap * (1-p1cap) / N1) + (p2cap * (1-p2cap) / N2) )
std.error <- round(std.error, 4)
relaibility.coeff <- qnorm(1- alpha/2 ,0 ,1)
relaibility.coeff <- round(relaibility.coeff, 2)
relaibility.coeff

confidence.interval <- c(diff.pcap - relaibility.coeff*std.error ,
                         diff.pcap + relaibility.coeff*std.error  ) 
round(confidence.interval, 4)