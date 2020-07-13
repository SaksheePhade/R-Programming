# Page no 542

case_no <- c(1:15)
SBP <- c(126, 129, 126, 123, 124, 125,
         127, 125, 123, 119, 127, 126, 122, 126,
         125)
length(SBP)
wt <- c(125, 130, 132, 200, 321, 100, 138, 138,
        149, 180, 184, 251, 197, 107, 125)
length(wt)
BMI <- c(24.41, 23.77, 20.07, 27.12, 39.07, 20.90,
         22.96, 24.44, 23.33, 25.82, 26.40, 31.37,
         26.72, 20.22, 23.62)
length(BMI)
data <- data.frame(case_no, SBP, wt, BMI)
data
correlation <- cor(SBP, wt+BMI)
correlation

cor.test(SBP, wt)
cor.test(wt, BMI)
cor.test(SBP, BMI)