# Page no 686

urban <- c(35 ,26 ,27 ,21 ,27 ,38 ,23 ,25 ,25 ,27 ,45 ,46 
           ,33 ,26 ,46 ,41)
rural <-c (29 ,50 ,43 ,22 ,42 ,47 ,42 ,32 ,50 ,37 ,34 ,31)
data <- c(urban, rural)
median <- median(data)
ab1 <- length(urban[urban > median])
ab2 <- length(rural[rural > median])
be1 <- length(urban[urban < median])
be2 <- length(rural[rural < median])
alpha <- 0.05

num <- c("above median", "below median")
Urban <- c(ab1, be1)
Rural <- c(ab2, be2)
level <- data.frame(num, Urban, Rural)
level

chi_sq <- ((sum(Urban)+sum(Rural)) * ( (ab1*be2)-(ab2*be1) )^2)/
          (sum(Urban)*sum(Rural)*(ab1+ab2)*(be1+be2))
chi_sq
chi_critical <- qchisq(1-alpha ,1)
chi_critical
pvalue <- pchisq (chi_sq ,1) 
pvalue