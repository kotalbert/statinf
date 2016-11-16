# Variance examples from the book. 

# p36, plotting the binomial variance
p <- seq(0,1, length=1000) 
y <- p * (1 - p)
plot(p,y)
 
# p40, simulation of standard normal variance
# nsim averages of 10 standard normals
# sigma=1, sample sd estimator: 1/sqrt(n)

nsim <- 1000
n <- 10
x <- matrix(rnorm(nsim*n), nsim)
x_means <- apply(x,1,mean)
sd(x_means) 
1/sqrt(n)

# p40, simulation of standard uniform variance
# sigma=1/12, sample sd estimator: 1/sqrt(12*n)
nsim <- 1000
n <- 10
x <- matrix(runif(nsim*n), nsim) 
x_means <- apply(x,1,mean)
sd(x_means)
1/sqrt(12*n)

# p41, simulation of poisson variance
# sigma=lambda, sample sd estimator: sqrt(lambda/n)
nsim <- 1000
n <- 10
x <- matrix(rpois(nsim*n,4), nsim) 
x_means <- apply(x,1,mean)
sd(x_means)
sqrt(4/n)

#p42, data example
library(UsingR)
x <- father.son$sheight
n <- length(x)
hist(x)
round(c(var(x), var(x) / n, sd(x), sd(x) / sqrt(n)),2)
