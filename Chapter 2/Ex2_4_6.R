#Page 42

no.skew = c(5 ,5 ,6 ,6 ,6 ,7 ,7 ,7 ,7 ,8 ,8 ,8 ,8 ,8 ,9 ,9 ,9 ,9 ,10 ,10 ,10 ,11 ,11)
right.skew <- c(5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 9, 9, 10)
left.skew <- c(5, 6, 6, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10)
getmode <- function(vect)
{
  vect.mode <-  names(table(vect))[which.max(table(vect))]
  as.numeric(vect.mode)
}

library(e1071)        
display <- function(vect)
{
  cat ("Mean = " ,mean(vect), "\n")
  cat ("Median = " ,median(vect), "\n")
  cat ("Mode = " ,getmode(vect), "\n")
  cat ("Skewness = " ,skewness(vect, type=2), "\n")
}

display(no.skew)
display(right.skew)
display(left.skew)