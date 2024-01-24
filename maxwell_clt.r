##### maxwell_clt.r
##### demonstrate CLT for Maxwell distribution

### W =sqrt(X) where X~chisquare(3)
mu.W = sqrt(8/pi)  # E(W)
var.W = 3-8/pi     # var(W)

n = 40    # sample size

ns = 10^5  # the number of samples to simulate
W.mean = rep(0,ns)  # vector for storing sample means

for (i in 1:ns){
  W.sample = sqrt(rchisq(n,3))
  W.mean[i] = mean(W.sample)  # sample mean Wbar
}

hist(W.mean,probability=TRUE)  # plot the values of Wbar
rng = mu.W+c(-1,1)*4*sqrt(var.W/n)
tvals = seq(rng[1],rng[2],.01)
npdf = dnorm(tvals,mu.W,sqrt(var.W/n))  # approximate normal pdf
lines(tvals,npdf,col="red")  # plot pdf over histogram

mean(W.mean)  # should be close to mu.W
sd(W.mean)   # should be close to sqrt(var.W/n)















#####