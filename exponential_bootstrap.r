##### exponential_bootstrap.r

### get nerve data
nerve = read.csv("nerve.csv",header=T)[,1]
n = length(nerve)
xbar = mean(nerve)
lambda.mle = 1/xbar # MLE for lambda

### parametric bootstrap
B = 100000          # number of bootstrap samples
btstrp = rep(0,B)   # for bootstrap estimates

for (i in 1:B) btstrp[i] = 1/mean(rexp(n,lambda.mle))
cat("bootstrap mean =",mean(btstrp),"st. error =",sd(btstrp),"\n")
hist(btstrp)

### get 95% confidence intervals and compare  
quantile(btstrp,c(0.025,0.975))
c(1/mean(nerve)-1.96*sd(btstrp),1/mean(nerve)+1.96*sd(btstrp))


### nonparametric bootstrap
for (i in 1:B) btstrp[i] = 1/mean(sample(nerve,replace=TRUE))
cat("bootstrap mean =",mean(btstrp),"st. error =",sd(btstrp),"\n")
hist(btstrp)

### get 95% confidence intervals and compare  
quantile(btstrp,c(0.025,0.975))
c(1/mean(nerve)-1.96*sd(btstrp),1/mean(nerve)+1.96*sd(btstrp))



#####

