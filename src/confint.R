# Confidence intervals excercises

# e4, p.84
# confidence interval for a variable

data(mtcars)
mpg <- mtcars$mpg

n <- length(mpg)
m <- mean(mpg)
s <- sd(mpg)
m + c(-1,1)*qt(.975, n-1)*s/sqrt(n)

# e5. p.84
# confidence interval for paired data

n <-  9
s <- 1

l <- c(-1,1)*qt(.975, n-1)/sqrt(n)

# e8, p.85
# t test for gruped data, equal variance

mpg4 <- subset(mtcars, cyl == 4)$mpg
mpg6 <- subset(mtcars, cyl == 6)$mpg

t.test(mpg4, mpg6, var.equal = T)

n4 <- length(mpg4)
s4 <- sd(mpg4)

n6 <- length(mpg6)
s6 <- sd(mpg6)

m <- mean(mpg4) - mean(mpg6)
sp <- sqrt (((n4-1)*var(mpg4)+(n6-1)*var(mpg6))/ (n4 + n6 -2)) * sqrt(1/n4+1/n6)
m + c(-1,1)*qt(.975,n4+n6-2)*sp

