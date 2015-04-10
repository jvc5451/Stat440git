rnormalt(n, mu, sd){
returnnorm = rep(0,n)
for(i in 1:n){
setvar = FALSE
while(!setvar){
Y=-log(runif(1))
U=runif(1)
if(u<exp(-(Y-1)^2/2)){
returnnorm[i]=x
setvar=TRUE
}
}
}
returnnorm
}