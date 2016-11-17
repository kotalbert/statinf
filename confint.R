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

