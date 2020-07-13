# Page no 348

TotalC1 <- c(6, 9, 7, 6, 6, 6, 6,6, 6, 6, 7, 6, 8, 7, 6, 4, 6, 6, 12, 5, 6, 8, 5, 6, 7)
TotalC2 <- c(6, 6, 9, 7, 7, 6, 11, 11, 9, 4, 8, 6, 8, 16, 10, 6, 11, 7, 11, 7, 7, 11, 7, 8, 8)
TotalC3 <- c(6, 10, 17, 9, 16, 6, 11, 15, 6, 8, 11, 9,9,9, 11, 8, 11, 6, 12, 13, 7, 16, 7, 16, 10)
TotalC4 <- c(7, 9, 19, 3, 13, 11, 10, 15, 8, 7, 11, 6, 10, 10, 9, 7, 14, 6, 9, 12, 7, 16, 7, 16, 8)


Health.scores <- c(TotalC1, TotalC2, TotalC3, TotalC4)

treatment <- c(rep (1,14), rep(2,11), rep (3,14), rep(4,11), rep (5,14), rep(6,11), rep (7,14), rep(8,11))
treatment <- factor(treatment, labels = c("placebo", "aloe juice",
                                          "placebo", "aloe juice",
                                          "placebo", "aloe juice",
                                          "placebo", "aloe juice"))

subject <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,19,20,21,22,23,24,25,
             1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,19,20,21,22,23,24,25,
             1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,19,20,21,22,23,24,25,
             1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,19,20,21,22,23,24,25)

df <- data.frame (subject, treatment, Health.scores)
df

anova.table <- aov(Health.scores~treatment+subject)
anova.table
summary(anova.table)