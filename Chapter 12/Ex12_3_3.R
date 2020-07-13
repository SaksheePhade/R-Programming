# Page no 611

x <- c(0:10)
f <- c(5, 14, 15, 23, 16, 9, 3, 3, 1, 1, 0)

data <- data.frame(x, f)
data
pcap <- sum(x*f)/sum(f)
pcap

rel_freq <- dpois(x, pcap)
rel_freq

exp_f <- rel_freq * sum(f)
exp_f

newdata <- data.frame(x, f, round(rel_freq,4),round(exp_f,4))
newdata

combine <- f[9] + f[10] + f[11]
combine
modified_f <- c(f[c(-9, -10, -11)], combine)
modified_f

combine2 <- exp_f[9] + exp_f[10] + exp_f[11]
combine2
modified_f2 <- c(exp_f[c(-9, -10, -11)], combine2)
modified_f2

df <- data.frame(modified_f, modified_f2)
df

chi_square <- sum((modified_f-modified_f2)^2/(modified_f2))
chi_square
pvalue <- pchisq(0.05, length(x)-3)
pvalue