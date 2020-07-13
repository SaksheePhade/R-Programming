# Page no 364

age1 <- c(20, 25, 22, 27, 21, 30, 45, 30, 35, 36, 31, 30, 40, 35, 30, 20, 21, 20, 20, 19)
age2 <- c(25, 30, 29, 28, 30, 30, 29, 31, 30, 30, 32, 35, 30, 40, 30, 23, 25, 28, 30, 31)
age3 <- c(24, 28, 24, 25, 30, 39, 42, 36, 42, 40, 41, 45, 40, 40, 35, 24, 25, 30, 26, 23)
age4 <- c(28, 31, 26, 29, 32, 40, 45, 50, 45, 60, 42, 50, 40, 55, 45, 29, 30, 28, 27, 30)

Home.visit <- c(age1, age2, age3, age4)

patient <- c(rep(1,5),rep(2,5),rep(3,5),rep(4,5),rep(5,5), rep(6,5), rep(7,5), rep(8,5),
             rep(9,5),rep(10,5),rep(11,5),rep(12,5),rep(13,5), rep(14,5), rep(15,5), rep(16,5))
patient <- factor(patient, labels = c("Cardiac", "Cancer", "C.V.A", "Tuberculosis",
                                      "Cardiac", "Cancer", "C.V.A", "Tuberculosis",
                                      "Cardiac", "Cancer", "C.V.A", "Tuberculosis",
                                      "Cardiac", "Cancer", "C.V.A", "Tuberculosis"))

df = data.frame (patient,Home.visit)
df

anova.table <- aov(Home.visit~patient)
anova.table
summary(anova.table)