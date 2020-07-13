# Page no 348

Baseline <- c(80, 95, 65, 50, 60, 70, 80, 70, 80, 65, 60, 50, 50, 85, 50, 15, 10, 80)
Month1 <- c(60, 90, 55, 45, 75, 70, 80, 60, 80, 30, 70, 50, 65, 45, 65, 30, 15, 85)
Month3 <- c(95, 95, 50, 70, 80, 75, 85, 75, 70, 45, 95, 70, 80, 85, 90, 20, 55, 90)
Month6 <- c(100, 95, 45, 70, 85, 70, 80, 65, 65, 60, 80, 60, 65, 80, 70, 25, 75, 70)

Health.scores <- c(Baseline, Month1, Month3, Month6)

time <- c(rep (1,length(Baseline)), rep(2,length (Month1)), rep(3,length(Month3))
                     ,rep(4, length(Month6)))
time <- factor(time, labels = c("Baseline", "Month1", "Month3", "Month6"))

subject <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
             1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
             1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
             1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18)


df <- data.frame (subject, time, Health.scores)
df

anova.table <- aov(Health.scores~time+subject)
anova.table
summary(anova.table)