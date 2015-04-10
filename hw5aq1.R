bootmedci<-function(x, B){
n<-10
R<-numeric(B)
for (b in 1:B){
i <- sample(1:n, size=n, replace = TRUE)
z <- x[i]
R[b] <- median(z)
}
rsort<-sort(R)
lb<-rsort[floor(0.025*B)]
ub<-rsort[floor(0.975*B)]
c(lb,ub)
}


