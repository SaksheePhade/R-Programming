# Page no 551

measure <- c(56, 41, 40, 28, 55, 25, 46, 71, 48, 63, 52, 62, 50, 45, 58, 46, 
             58, 34, 65, 55, 57, 59, 64, 61, 62, 36, 69, 47, 73, 64, 60, 62,
             71, 62, 70, 71)
age <- c(21, 23, 30, 19, 28, 23, 33, 67, 42, 33, 33, 56, 45, 43, 38, 37, 43, 
         27, 43, 45, 48, 47, 48, 53, 58, 29, 53, 29, 58, 66, 67, 63, 59, 51,
         67, 63)
treatment <- c("A", "B", "B", "C", "A", "C", "B", "C", "B", "A", "A", "C", "C",
               "B", "A", "C", "B", "C", "A", "B", "B", "C", "A", "A", "B", "C",
               "A", "B", "A", 'B', "B", "A", "C", "C", "A", "C")
data <- data.frame(measure, age, treatment)
data

Regression.eqn <- lm(measure~age+treatment)
Regression.eqn
summary(Regression.eqn)

aov <- aov(Regression.eqn)
aov
summary(aov)
library(ggplot2)
library(tidyverse)
data$smoke <- factor(data$treatment)
ggplot(data) + geom_point(aes(y = measure,x = age, pch = treatment)) + 
  geom_smooth(aes(y = measure,x = age, pch=treatment), method = 'lm', se = FALSE)