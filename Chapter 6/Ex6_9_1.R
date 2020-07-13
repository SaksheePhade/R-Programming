# Page no 196

data <- c(9.7, 12.3, 11.2, 5.1, 24.8, 14.8, 17.7)
variance <- var(data)
variance
df <- length(data)-1
alpha <- 0.05

chi1 <- qchisq(1-alpha/2, df)
chi1 <- round(chi1,3)
chi1
chi2 <- qchisq(alpha/2, df)
chi2 <- round(chi2,3)
chi2

confidence.interval <- c(sqrt(df * variance / chi1),
                         sqrt(df * variance / chi2) ) 
round(confidence.interval, 3)