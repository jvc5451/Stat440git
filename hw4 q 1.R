n<-50
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
ttest<-t.test(x, alternative = "two.sided", mu=mu0)
ttest$p.value })
power[i] <-mean(pvalues <= .1)
}

library(Hmisc)
plot(mu, power)

se <- sqrt(power * (1 - power) / m)
errbar(mu, power, yplus= power+se, yminus = power-se, xlab = bquote(theta))
lines(mu, power, lty=3)
