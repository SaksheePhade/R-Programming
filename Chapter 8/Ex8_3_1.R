# Page no 339

A <- c(7, 8, 9, 10, 11)
B <- c(9, 9, 9, 9, 12)
C <- c(10, 10, 12, 12, 14)

days <- c(A, B, C)

teaching_method <- c(rep (1,length(A)), rep(2,length (B)), rep(3,length(C)))
teaching_method <- factor(teaching_method, labels = c("A", "B", "C"))

age <- c("Under 20","20 to 29","30 to 39","40 to 49","50 and over",
         "Under 20","20 to 29","30 to 39","40 to 49","50 and over",
         "Under 20","20 to 29","30 to 39","40 to 49","50 and over")
df = data.frame (age,teaching_method, days)
df

anova.table <- aov(days~teaching_method+age)
anova.table
summary(anova.table)