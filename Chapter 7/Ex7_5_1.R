# Page no 258

N <- 301
n <- 24
alpha <- 0.05
pcap <- n/N
pcap
p <- 0.063
std.error <- sqrt(p*(1-p)/N)
std.error
z.critical <- qnorm(1-alpha, 0,1)
z.critical
test.statistic <- (pcap - p) / std.error
test.statistic <- round(test.statistic,4)
test.statistic
statistical.decision <- "Do not reject hypothesis."
statistical.decision

pvalue <- 1-pnorm(test.statistic,0,1)
pvalue