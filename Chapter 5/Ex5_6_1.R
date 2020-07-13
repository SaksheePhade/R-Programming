#Page no 155

diff.pcap <- 0.10
p1 <- 0.28
p2 <- 0.21
n1 <- 100
n2 <- 100
diff.p <- p1-p2
variance <- (p1 * (1-p1))/n1 + (p2 * (1-p2))/n2

sampling.distribution <- function(diff.pcap, diff.p, v) {
  z <- (diff.pcap - diff.p)/sqrt(v)
  return(z)
}

z <- sampling.distribution(diff.pcap, diff.p, variance)
z

area <- 1 - pnorm(z)
area