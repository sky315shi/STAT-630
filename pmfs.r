##### pmfs.r
##### examples of computing pmfs


### binomial(n,theta)
n = 10
theta = .4
x = 0:10                     # sequence of integers from 0 to 10
bin.pmf = dbinom(x,n,theta)  # values of the pmf for each of those in x
rbind(x,bin.pmf)
plot(x,bin.pmf,type="p")
sum(bin.pmf)                 # should equal 1

### negative binomial(r,theta)
r = 3
theta = .6
x = 0:15                         # sequence of integers from 0 to 15
negbin.pmf = dnbinom(x,r,theta)  # values of the pmf for each of those in x
rbind(x,negbin.pmf)
plot(x,negbin.pmf,type="p")
sum(negbin.pmf)                  # should be close to 1 if x is long enough

### Poisson(lambda)
lambda = 4
x = 0:15                       # sequence of integers from 0 to 15
poisson.pmf = dpois(x,lambda)  # values of the pmf for each of those in x
rbind(x,poisson.pmf)
plot(x,poisson.pmf,type="p")
sum(poisson.pmf)               # should be close to 1 if x is long enough


#####

