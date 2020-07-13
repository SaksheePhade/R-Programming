# Page no 186

n <- 1220
pcap <- 0.18
alpha <- 0.05

std.error <- sqrt(pcap * (1-pcap) / n)
std.error
relaibility.coeff <- qnorm(1- alpha/2 ,0 ,1)
relaibility.coeff

confidence.interval <- c(pcap - relaibility.coeff*std.error ,
                         pcap + relaibility.coeff*std.error  ) 
round(confidence.interval, 3)