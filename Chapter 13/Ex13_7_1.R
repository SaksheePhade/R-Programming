# Page no 699

values <- c(75 ,84 ,80 ,77 ,68 ,87 ,92 ,77 ,
            92 ,86 ,78 ,76 ,80 ,81 ,72 ,77 ,92 ,80 ,80 ,77, 77, 92, 
            68, 87, 84, 75, 78, 80, 80, 77, 72, 81, 76, 78, 81, 86)
x <- c(68, 72, 75, 76, 77, 78, 80, 81, 84, 86, 87, 92)
freq <- c(2, 2, 2, 2, 6, 3, 6, 3, 2, 2, 2, 4)

mean <- round(mean(values),0)
mean
var <- var(values)
sd <- round(sqrt(var),0)
sd
sum = 0
j=1
for(i in freq) {
  sum = sum + i
  cumulative[j] = sum
  j = j + 1
}
Fs <- round(cumulative/sum(freq), 4)
z <- round((x-mean)/sd, 2)
Ft <- round(pnorm(z, 0, 1), 4)

table <- data.frame(x, freq, cumulative, Fs, z, Ft, abs(Fs-Ft))
table

ks.test(values, "pnorm", mean(values), sd( values ),
           alternative = "two.sided")

plot(x=Fs, y=Ft, type = "p")