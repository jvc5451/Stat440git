coverge=function(n,m){ 
lb=rep(0:m)
ub=rep(0:m)
for(i in 0:m){
chi<-rchisq(n,2)
xbar=mean(chi)
s2=var(chi)
lb[i]=xbar-2*sqrt(s2/n)
ub[i]=xbar+2*sqrt(s2/n)
}
cov<-mean(as.integer((2>lb)&(2<ub)))
cov
}