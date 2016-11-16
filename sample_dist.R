# Sample probability distributions

# Binominal
choose(8,7)*0.5^7*(1-.5)^1+choose(8,8)*.5^8 
# P(X>=x)=1-F(6), F(x)=P(X<x)

pbinom(6, size=8, prob=.5, lower.tail=F)
1 - pbinom(6, size=8, prob=.5)

# Normal
qnorm(.025)
qnorm(.05)
qnorm(.1)
qnorm(.9)
qnorm(.95)
qnorm(.975)

# Poisson
