# Variance examples from the book. 

# p36, plotting the binomial variance
p <- seq(0,1, length=1000) 
y <- p * (1 - p)
plot(p,y)
 
# p40, simulation of standard normal variance
# nsim averages of 10 standard normals

nsim <- 1000
n <- 10
x <- matrix(rnorm(nsim*n), nsim)
x2 <- apply(x,1,mean)
sd(x2)

#p42, data example
library(UsingR)
x <- father.son$sheight
n <- length(x)
hist(x)
round(c(var(x), var(x) / n, sd(x), sd(x) / sqrt(n)),2)
