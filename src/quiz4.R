# Quiz 4

# 1
a <- c(140, 138, 150, 148, 135)
b <- c(132, 135, 151, 146, 130)

t.test(a,b, paired = T, alternative = "two.sided")

#2 
1100 + c(-1,1)*qt(1-.05/2,9)*30/sqrt(9)

# 3
#ho: p=.5
pbinom(q=2, size=4, prob=0.5, lower.tail = F)


# 4
ppois(10, lambda=1787/100)

# 5
# H0: m1-m2 = 0
# H1: m1-m2 <> 0

m1 <- -3
m2 <- 1
s1 <- 1.5
s2 <- 1.8
n1 <- n2 <- 9

dif <- m1 - m2
sp <- sqrt(((n1-1)*s1^2+(n2-1)*s2^2)/(n1+n2-2))
t <- dif/(sp*sqrt(1/n1+1/n2))
2*(1-pnorm(t, lower.tail = F))

# 6
qt(0.9,9)
qt(0.95,9)

# 7
power.t.test(n=100, delta=0.01, sd=0.04, type="one.sample", alternative = "one.sided")

# 8
power.t.test(delta=0.01, sd=0.04, power=.9, type="one.sample", alternative = "one.sided")

# 9