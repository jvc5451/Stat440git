powertest<-function(n){
m<-1000
mu0<-500
sigma<-100
mu<-c(seq(450, 650, 10))
M <- length(mu)
power <- numeric(M)
for (i in 1:M){
mu1 <- mu[i]
pvalues <- replicate(m, expr = {
x <- rnorm(n, mean = mu1, sd=sigma)
ttest<-t.test(x, alternative = "greater", mu=mu0)
ttest$p.value })
power[i] <-mean(pvalues <= .05)
}
}
