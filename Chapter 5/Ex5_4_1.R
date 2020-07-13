#Page no 145

sample <- 15
x1bar <- 92
x2bar <- 105
sd <- 20

diff.xbar <- x1bar - x2bar
diff.mean <- 0
den <- sqrt( (sd^2/sample) + (sd^2/sample) )

sdn <- function(diff.xbar, diff.mean, den) {
  z <- ( diff.xbar - diff.mean )/den
  return(z)
}

z <- sdn(diff.xbar, diff.mean, den)
z

x = seq (-100 ,100 , length =10000)
y = dnorm (x,diff.mean ,den^2)
plot (x,y,type = "l")