# Page no 769


subject <- c(1:40)
time <- c(12, 8, 5, 17, 19, 12, 10, 11, 5, 2, 10, 7, 19, 11,
          11, 19, 19, 24, 21, 14, 21, 41, 23, 15, 15, 21, 45,
          37, 51, 50, 42, 21, 20, 15, 40, 39, 33, 37, 15, 52)
status <- c(rep(1,5), 0, rep(1,5), 0, rep(1,10), 0, 1, 0, 
            rep(1,13), 0, 0)
age <- c(21, 18, 17, 17, 25, 30, 16, 23, 31, 21, 19, 18, 18,
         21, 23, 15, 17, 21, 22, 17, 28, 31, 
         22, 31, 25, 19, 21, 23, 15, 29, 28, 31, 31, 26, 28,
         31, 23, 23, 29, 37)
length(age)
km <- Surv(time, status)
km
summary(km)
dt <- data.frame(subject, time, status, age)
dt

plot(survfit(Surv(time, status)~1, data = dt,
             conf.type = "log-log"), xlab = "Time") 

c <- coxph(Surv(time, status)~1, data = dt)
summary(c)