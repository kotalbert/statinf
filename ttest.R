# Hypothesis testing

# e3, p.101
# calculate the critical value of the test

data(mtcars)
m  <- mean(mtcars$mpg)
s <- sd(mtcars$mpg)
n <- nrow(mtcars)
a <- .05
z <- qt(1-a, n-1)

crit <- m + z*s/sqrt(n)
