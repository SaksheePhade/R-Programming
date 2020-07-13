# Page no 729

test <- c(230, 175, 315, 290, 275, 150, 360, 425)
citric <- c(421, 278, 618, 482, 465, 105, 550, 750)

n1 <- length(test)
n2 <- length(citric)
k=1
for(i in 1:n2) {
  for(j in i+1:n1) {
    S[k] <- (test[j]-test[i])/(citric[j]-citric[i])
    k = k +1
  }
}
S <- S[!is.na(S)]
S

slopes <- round(sort(S), 4)
slopes
length(slopes)

beta1 <- median(slopes)
beta1

terms <- test - beta1*citric
terms

beta0 <- median(terms)
beta0