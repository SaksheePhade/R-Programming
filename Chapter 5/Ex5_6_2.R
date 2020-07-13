#Page no 155

diff.pcap <- 0.05
p1 <- 0.34
p2 <- 0.26
n1 <- 250
n2 <- 200
diff.p <- p1-p2
variance <- (p1 * (1-p1))/n1 + (p2 * (1-p2))/n2

sampling.distribution <- function(diff.pcap, diff.p, v) {
  z <- (diff.pcap - diff.p)/sqrt(v)
  return(z)
}

z <- sampling.distribution(diff.pcap, diff.p, variance)
z

area <- pnorm(z)
area