trimmed.mse=function(k){
n=20
m=1000
tmean=numeric(m) 
for(i in 1:m){
x=sort(rcauchy(n,0,1))
tmean[i]=sum(x[(k+1):(n-k)])/(n-2*k)
}
mse.est=mean(tmean^2)
mse.est
}