#Page no 150

pcap <- 0.45
n <- 200
p <- 0.51

sampling.distribution <- function(pcap, p, n) {
  z <- ( pcap - p )/sqrt( p * (1-p) / n )
  return(z)
}

z <- sampling.distribution(pcap, p, n)
z

area.left <- pnorm(z)
area.left