# Statistical testing

# Paired t-test
library(UsingR)
data("father.son")
t.test(father.son$sheight, father.son$fheight)

# Exact binominal test
# H0: p=.5
# Ha: p>.5
binpval <- function(i) {
  pbinom(q = i, size=8, prob=.5, lower.tail = F)
}

# Calculationg Type I error rate
q <- matrix(c(-1, 0,1,2,3,4,5,6,7))
pv <- apply(q, 1, binpval)
data.frame(q, pv)

# e3, p.94
# What is the smallest value of m0 that would reject test
#H0: m=m0
#H1: m<m0

data("mtcars")
m <- mean(mtcars$mpg)
s <- sd(mtcars$mpg)
z <- qnorm(.05)
mu0 <- m-z*s/sqrt(nrow(mtcars))

# e4, p.94
# Test if mpg is the same in two samples
data("mtcars")
m4 <- mtcars$mpg[mtcars$cyl == 4]
m6 <- mtcars$mpg[mtcars$cyl == 6]
t.test(m4, m6)

# e5, p.95
# Confidence interval for two sided test
n <- 100
m <- 3
s <- 1.1
a <- .05

m + c(-1,1)*qt(1-a/2,n-1)*s/sqrt(n)

# e5, p.95
# check if coin is fair
# H0: p=.5

# exact binominal calculation
pbinom(54, size=100, prob=.5, lower.tail=F)

# normal approximation
pnorm(.55, mean=.5, sd=sqrt(.5*.5/100), lower.tail = F)

# p-value= 0.1841, H0 not rejected, coin is fair

#e6, p.95
# H0: lambda=520
# H1: lambda>520

# Exact p-value for Poisson distribution
ppois(15800-1, lambda=520*30, lower.tail = F)
# p-value = .055, we does not reject H0

# normal approx.
pnorm(15800, mean=520*30, sd=sqrt(520*30), lower.tail = F)

#e7, p.95
# AB test, randomized trail
# equal variances
# H0: m1-m2 = 0
# H1: m1-m2 <> 0 

m1 <- 10
m2 <- 11
n1 <- n2 <- 100
dif <- m1 - m2
sp <- 4
se <- sp * sqrt(1/n1+1/n2)
z <- dif/se

# Two sided test
2*pnorm(z)
# p-value > 0.05, does not rejext H0

#e8, p.95
data("mtcars")
c6 <- mtcars$mpg[mtcars$cyl == 6]
c8 <- mtcars$mpg[mtcars$cyl == 8]

# P-value for t-test
t.test(c6, c8, var.equal = T)

# manual calculation
m1 <- mean(c6)
m2 <- mean(c8)
dif <- m1-m2
n1 <- length(c6)
n2 <- length(c8)
s1 <- sd(c6)
s2 <- sd(c8)
sp <- sqrt(((n1-1)*s1^2+(n2-1)*s2^2)/(n1+n2-2))
t <- dif/(sp*sqrt(1/n1+1/n2))
pnorm(t, lower.tail = F)