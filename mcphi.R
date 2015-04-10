mcphi<-function(x,m){
j<-0
y<-0
q<-0
while(j<m){
j<-j+1
z<-x*runif(1)
y<-y+1/sqrt(2*pi)*exp(-z^2/2)
q<-q+(1/sqrt(2*pi)*exp(-z^2/2))^2
}
y<-y+0.5
q<-q+0.5

mu<-y*(1/m)*x
secmo<-q*(1/m)*x^2-mu^2

var<-secmo-mu^2
c(y-1.96*(var)^(0.5)/m^(0.5),y+1.96*(var)^(0.5)/m^(0.5))

}