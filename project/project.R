# Code for final project
# Part 1 - exponential distribution/CLT

# Generating random samples
set.seed(123456)

# Total number of random samples
nsim <- 10000
# Number of observation per sample
obs <- 40
# Lambda parameter for distribution
lbd = 0.2
x <- matrix(rexp(nsim*obs, lbd), ncol=obs)

# Exploratory analysis od sample

# Exp. distribution:
# lambda = .2
# mean: 1/lambda = 5
# sd: 1/lambda = 5

mean(x)
sd(x)

hist(x)

# Calculate mean for each sample
y <- apply(x, 1, mean)
hist(y)
mean(y)
sd(y)

