# Page no 609

num_patients <- c(0:10)
num_doctors <- c(5 ,6 ,8 ,10 ,10 ,15 ,17 ,10 ,10 ,9 ,0)
new <- c(0 ,6 ,16 ,30 ,40 ,75 ,102 ,70 ,80 ,81 ,0)
num_participated <- 2500

data <- data.frame(num_patients, num_doctors, new)
data
pcap <- sum(new)/num_participated
pcap

rel_freq <- dbinom(num_patients, 25, pcap)
rel_freq

exp_f <- sum(num_doctors)*rel_freq
exp_f
newdata <- data.frame(num_patients, num_doctors, round(rel_freq,4),
                      round(exp_f,4))
newdata
combine <- num_doctors[1] + num_doctors[2]
combine

modified_f <- num_doctors
modified_f[1] <- combine

for (i in 2:10) {
  modified_f[i] = modified_f[i+1]
}
modified_f = modified_f[modified_f!=modified_f[11]]
modified_f[10] <- num_doctors[11]
modified_f

combine2 <- exp_f[1] + exp_f[2]
combine2

modified_f2 <- exp_f
modified_f2[1] <- combine2

for (i in 2:10) {
  modified_f2[i] = modified_f2[i+1]
}
modified_f2 = modified_f2[modified_f2!=modified_f2[11]]
modified_f2[10] <- exp_f[11]
modified_f2

df <- data.frame(modified_f, modified_f2)
df

chi_square <- sum((modified_f-modified_f2)^2/(modified_f2))
chi_square
pvalue <- pchisq(0.005, length(num_patients)-2)
pvalue