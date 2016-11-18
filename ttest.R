# Hypothesis testing

# e3, p.94
# calculate the critical value of the test

data(mtcars)
m  <- mean(mtcars$mpg)
s <- sd(mtcars$mpg)
n <- nrow(mtcars)
a <- .05
z <- qt(1-a, n-1)

crit <- m + z*s/sqrt(n)

# e4, p.94
# mpg, two groups, unequal variance, two sided test

# Calculate test statistic
m4  <- mtcars[mtcars$cyl == 4,]$mpg
m6  <- mtcars[mtcars$cyl == 6,]$mpg

t.test(m6,m4)

# e5, p.95
n <- 100
m <- 3
s <- 1.1

# Calculatte the confidence intercal
# Values outside intercal will reject the H0
a <- qt(.95, n-1)
m + c(-1,1)*(s/sqrt(n))

# e6, p.95
# Binominal test

# e7, p.95
