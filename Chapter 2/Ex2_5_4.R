#Page 49

mesokurtic <- c(1,2,2,3,3,3,3,3,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
                6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
                8,8,8,8,8,8,8,8,9,9,9,9,9,10,10,11)
leptokurtic <- c(1,2,2,3,3,3,3,3,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
                 5,5,5,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
                 6,6,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,8,8,8,8,8,8,8,8,9,9,9,
                 9,9,10,10,11)
platykurtic <- c(1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,6,7,7,7,8,8,8,9,9,9,10,
                 10,10,11,11,11)
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
  cat ("Kurtosis = " ,kurtosis(vect, type = 2), "\n")
}

display(mesokurtic)
display(leptokurtic)
display(platykurtic)