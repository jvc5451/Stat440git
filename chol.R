rmvn.Choleski<-function(n, mu, Sigma){
d<-length(mu)
Q<-chol(Sigma)
Z<-matrix(rnorm(n*d), nrow=n, ncol=d)
X<-Z%*%Q + matrix(mu, n, d, byrow=TRUE)
X
}