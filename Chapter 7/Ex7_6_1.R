# Page no 258

N1 <- 29
n1 <- 11
N2 <- 44
n2 <- 24
alpha <- 0.05

pcap1 <- n1/N1
pcap2 <- n2/N2
pbar <- (n1+n2)/(N1+N2)
q <- 1 - pbar

z.critical <- qnorm(1-alpha, 0,1)
z.critical

test.statistic <- (pcap2-pcap1)/sqrt( (pbar*q/N2) + (pbar*q/N1) )
test.statistic <- round(test.statistic,4)
test.statistic

statistical.decision <- "Fail to reject hypothesis as z<alpha."
statistical.decision

pvalue <- 1-pnorm(test.statistic,0,1)
pvalue