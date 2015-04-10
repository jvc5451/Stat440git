normlocmix <- function(n){
j<-0
x<-0
while(j<n+1){
	j<-j+1
	u<-runif(1)
	if(u<0.500){
		x[j]=rnorm(1,0,1)

	}
	else{
		x[j]=rnorm(1,3,1)

	}
}
x=x[0:n]
x
}
