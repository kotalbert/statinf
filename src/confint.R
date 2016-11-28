# Confidence intervals

# Independant group t confidence intervals
# Y^-X^ +/- t_{nx+ny-2, 1-a/2}*sp*sqrt(1/nx+1/ny) 
# sp^2 = [(nx - 1)sx^2 + (ny - 1)sy^2]/(nx+ny-2) 

data(sleep)
g1 <- sleep$extra[1:10]
g2 <- sleep$extra[11:20]
dif  <- g2 - g1
m <- mean(dif)
s <- sd(dif)
n <- 10
a <- .05

# confidence interval for dif
m + c(-1,1)*qt(1-a/2,n-1)*s/sqrt(n)
t.test(dif)$conf.int

# unequal variances
# Y^-X^ +/- t_{df}*sqrt(sx^2/nx +sy^2/ny)

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

c(-1,1)*qt(.975, n-1)/sqrt(n)

# e7, p.85
# t test for gruped data, equal variance

mpg4 <- subset(mtcars, cyl == 4)$mpg
mpg6 <- subset(mtcars, cyl == 6)$mpg

# manually
n4 <- length(mpg4)
s4 <- sd(mpg4)

n6 <- length(mpg6)
s6 <- sd(mpg6)

# diff of group means
md <- mean(mpg4) - mean(mpg6)

# pooled variance estimator
sp <-((n4-1)*s4^2 + (n6-1)*s6^2)/(n4+n6-2)
sp <- sqrt(sp)

# mean variance estimator
semd <- sp*sqrt(1/n4+1/n6)

# confidence interval
md + c(-1,1)*qt(.975,n4+n6-2)*semd

# with function
ci <- t.test(mpg4, mpg6, var.equal = TRUE)$conf.int
as.vector(ci)

# e10, p.85
# pooled variance estimate for two groups

nx <- 9; ny <- 9 
md <- 1 - 3 
sx <- 1.5; sy <- 1.8

sp <- ((nx-1)*sx^2+(ny-1)*sy^2)/(nx+ny-2)
