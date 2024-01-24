##### pdfs.r
##### examples of pdfs


### exponential(lambda)
lambda = .4
x = seq(0,10,.01)                # sequence of values from 0 to 20
expon.pdf = dexp(x,rate=lambda)  # values of the pmf for each of those in x
Result = cbind(x,expon.pdf)
Result[1:51,]                    # print 51 rows of Result
plot(x,expon.pdf,type="l")
integrate(dexp,0,Inf,rate=lambda)            # equals 1
integrate(dexp,0,10,rate=lambda)

### gamma(alpha,lambda)
lambda = .4
alpha = 5
x = seq(0,40,.04)
gamma.pdf = dgamma(x,alpha,rate=lambda)
Result = cbind(x,gamma.pdf)
Result[10*(1:50)+1,]             # print every 10th row of Result
plot(x,gamma.pdf,type="l")

### normal(mu,sigma.sq)
mu = 6
sigma.sq = 1.5
x = seq(0,12,.01)
normal.pdf = dnorm(x,mu,sd=sqrt(sigma.sq))  # R uses the standard deviation
Result = cbind(x,normal.pdf)
Result[20*(1:60)+1,]             # print every 20th row of Result
plot(x,normal.pdf,type="l")


#####

