boothyptest<-function(x, B, mu0){
n<-10
R<-numeric(B)
for (b in 1:B){
i <- sample(1:n, size=n, replace = TRUE)
z <- x[i]
R[b] <- mean(z)
}
rsort<-sort(R)
lb<-rsort[floor(0.025*B)]
ub<-rsort[floor(0.975*B)]
if(mu0<=ub && mu0>=lb){
test=0
}
else{
test=1
}
test
}