#Page no 150

p <- 0.357
n <- 150
pcap <- 0.40

sampling.distribution <- function(pcap, p, n) {
  z <- ( pcap - p )/sqrt( p * (1-p) / n )
  return(z)
}

z <- sampling.distribution(pcap, p, n)
z
prob <- 1 - pnorm(z)
prob