# Calculating power 

# e5, p.105
# Power of t test for two samples
# H0: mu = 10, m ~ N(10, sd/n=0.4)
# H1: mu > 10
# n = 100
# sd = 4
# reject, if m > 10+1.645*0.4
# Calulate power - prob of rejecting false H0
pnorm(10+qnorm(.95)*0.4, mean=11, sd=0.4, lower.tail = F)

# e6, p.105
# H0: mu=0
# H1: mu>0
# sd=0.04, power=80%, mua = 0.01
# m ~ N(0, 0.04/sqrt(n))
# We reject if m > 0 + qnorm(.95) * 0.04/sqrt(n)
n <- 99
# Calculate power for given n
pnorm(0+(qnorm(.95)*0.04)/sqrt(n), mean=0.01, sd=0.04/sqrt(n), lower.tail = F)
power.t.test(delta=0.01, sd=0.04, power=0.8, type="one.sample", alternative="one.sided")
