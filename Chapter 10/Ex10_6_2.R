#Page no 515

W <- c(193.6 ,137.5 ,145.4 ,117 ,105.4 ,99.9 ,74 ,74.4 ,112.8 ,
       125.4 ,126.5 ,115.9 ,98.8, 94.3, 99.9, 83.3, 72.8, 83.5, 59, 87.2, 84.4,
       78.1, 51.9, 57.1, 54.7, 78.6, 53.7, 96, 89)

P <- c(6.24 ,8.03 ,11.62 ,7.68 ,10.72 ,9.28 ,6.23 ,8.67 ,6.91 ,7.51 ,10.01 ,
        8.70 ,5.87, 7.96, 12.27, 7.33, 11.17, 6.03, 7.90, 8.27, 11.05, 7.61, 
       6.21, 7.24, 8.11, 10.05, 8.79, 10.40, 11.72)

S <- c(30.1 ,22.2 ,25.7 ,28.9 ,27.3 ,33.4 ,26.4 ,17.2 ,15.9 ,12.2 ,30 ,24 ,22.6
       ,18.2, 11.5, 23.9, 11.2, 15.6, 10.6, 24.7, 25.6, 18.4, 13.5, 12.2, 14.8,
       8.9, 14.9, 10.3, 15.4)

data <- data.frame(W, P, S)
data

Regression.eqn <- lm(W~P+S)
Regression.eqn
aov <- aov(W~P+S)
aov
summary(aov)
Regression.eqn
summary(Regression.eqn)

res1 <- residuals(lm(W~P))
res2 <- residuals(lm(W~S))
res3 <- residuals(lm(P~W))
res4 <- residuals(lm(P~S))
res5 <- residuals(lm(S~W))
res6 <- residuals(lm(S~P))

partial1 = cor(res2 ,res4)
partial1
cor.test(res2, res4)

partial11 = cor(res3 ,res5)
partial11
cor.test(res3, res5)

partial2 = cor(res1 ,res2)
partial2
cor.test(res3, res5)

partial3 = cor(res1 ,res6)
partial3
cor.test(res1, res6)

partial4 = cor(res1 ,res3)
partial4
cor.test(res1, res3)

partial5 = cor(res1 ,res4)
partial5
cor.test(res1, res4)

partial6 = cor(res1 ,res5)
partial6
cor.test(res1, res5)

partial7 = cor(res2 ,res3)
partial7
cor.test(res2, res3)

partial8 = cor(res2 ,res5)
partial8
cor.test(res2, res5)

partial9 = cor(res2 ,res6)
partial9
cor.test(res2, res6)

partial10 = cor(res3 ,res4)
partial10
cor.test(res3, res4)

partial12 = cor(res3 ,res6)
partial12
cor.test(res3, res6)

partial13 = cor(res4 ,res5)
partial13
cor.test(res4, res5)

partial14 = cor(res4 ,res6)
partial14
cor.test(res4, res6)

partial15 = cor(res5 ,res6)
partial15
cor.test(res5, res6)

partial_cor <- c(partial1, partial11, partial3, partial2, partial4, partial5, partial6,
                 partial7, partial8, partial9, partial10, partial12,
                 partial13, partial14, partial15)
partial_cor