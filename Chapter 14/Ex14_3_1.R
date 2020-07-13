# Page no 757


subject <- c(1:39)
time <- c(29, 129, 79, 138, 21, 95, 137, 6, 212, 11, 15, 337, 82, 33,
          75, 109, 26, 117, 8, 127, 155, 102, 34, 109, 15, 122, 27, 6,
          7, 2, 9, 17, 16, 23, 9, 12, 4, 0, 3)
status <- c(1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, rep(0, 7), 1, 0,
            0, 1, 0, rep(1, 13))
grade <- c(rep("L", 25), rep("H",14))

km <- Surv(time, status)
km
summary(km)
dt <- data.frame(subject, time, status, grade)
dt

plot(survfit(Surv(time, status)~1, data = dt), xlab = "Time") 