##### cdfs.r
##### examples of cdfs


### binomial(n,theta)
n = 10
theta = .4
x = 0:10
bin.cdf = pbinom(x,n,theta)  # values of the cdf for each of those in x
rbind(x,bin.cdf)
plot(x,bin.cdf,type="p")
pbinom(6,n,theta)-pbinom(1,n,theta)
sum(dbinom(c(2:6),n,theta))  # same as previous

### Poisson(lambda)
lambda = 4
x = 0:15
poisson.cdf = ppois(x,lambda)  # values of the cdf for each of those in x
rbind(x,poisson.cdf)
plot(x,poisson.cdf,type="p")
ppois(6,lambda)-ppois(1,lambda)
sum(dpois(c(2:6),lambda))      # same as previous

### gamma(alpha,lambda)
lambda = .4
alpha = 5
x = seq(0,40,.04)
gamma.cdf = pgamma(x,alpha,rate=lambda)
plot(x,gamma.cdf,type="l")
pgamma(25,alpha,rate=lambda)-pgamma(10,alpha,rate=lambda)
integrate(dgamma,10,25,shape=alpha,rate=lambda)  # same as previous


### normal(mu,sigma.sq)
mu = 6
sigma.sq = 1.5
sigma = sqrt(sigma.sq)
x = seq(0,12,.01)
normal.cdf = pnorm(x,mean=mu,sd=sigma)   # R uses the standard deviation
plot(x,normal.cdf,type="l")
pnorm(8,mean=mu,sd=sigma)-pnorm(5,mean=mu,sd=sigma)
pnorm((8-mu)/sigma)-pnorm((5-mu)/sigma)  # same as previous
integrate(dnorm,5,8,mean=mu,sd=sigma)    # same as previous


#####

