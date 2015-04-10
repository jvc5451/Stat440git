mcphi<-function(x,m){
z<-x*runif(m)
simdat<-x*(1/(2*pi)^(0.5))*exp(-z^2/2)
mu<-mean(simdat)
var<-var(simdat)
c(mu-1.96*(var/m)^(0.5),mu+1.96*(var/m)^(0.5))
}