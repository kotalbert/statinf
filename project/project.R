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

# Draw empirical distribution
hist(x, col="lightblue", freq=F, main="Histogram of Exponential Random Distribution", breaks=60)
abline(v=5, lw=2, col="red")

# Calculate the samples means
sm <- apply(x, 1, mean)
hist(sm, col="lightblue", freq=F, main="Histogram of Sample Means", breaks=9)
abline(v=5, lw=2, col="red")

# ToothGrowth 
head(ToothGrowth)
len <- ToothGrowth$len
sup <- ToothGrowth$supp
dos <- ToothGrowth$dose

# lenght vs sup
boxplot(l~sup)
tapply(l, sup, summary)

# length vs dose
boxplot(l~dos)
tapply(l, dos, summary)

summary(dos)
dev.off()
