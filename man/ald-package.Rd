\name{ald-package}
\alias{ald-package}
\alias{ald}
\docType{package}
\title{
The Asymmetric Laplace Distribution
}
\description{
It provides the density, distribution function, quantile function, random number generator, likelihood function, moments and Maximum Likelihood estimators for a given sample, all this for the three parameter Asymmetric Laplace Distribution defined in Koenker and Machado (1999) useful for quantile regression.
}
\details{
\tabular{ll}{
Package: \tab ald\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-01-27\cr
License: \tab GPL (>=2)\cr
}

}

\author{
Christian E. Galarza <\email{cgalarza88@gmail.com}> and 
Victor H. Lachos <\email{hlachos@ime.unicamp.br}>
}

\references{
Koenker, R., Machado, J. (1999). Goodness of fit and related inference processes for quantile
regression. J. Amer. Statist. Assoc. 94(3):1296-1309.

Yu, K. & Moyeed, R. (2001). Bayesian quantile regression. Statistics & Probability Letters, 54(4), 437-447.

Yu, K., & Zhang, J. (2005). A three-parameter asymmetric Laplace distribution and its extension. Communications in Statistics-Theory and Methods, 34(9-10), 1867-1879.
}

\keyword{package}

\seealso{
\code{\link{ALD}},\code{\link{momentsALD}},\code{\link{likALD}},\code{\link{mleALD}}
}

\examples{
## Let's plot an Asymmetric Laplace Distribution!

##Density
sseq = seq(-40,80,0.5)
dens = dALD(y=sseq,mu=50,sigma=3,p=0.75)
plot(sseq,dens,type="l",lwd=2,col="red",xlab="x",ylab="f(x)", main="ALD Density function")

## Distribution Function
df = pALD(q=sseq,mu=50,sigma=3,p=0.75)
plot(sseq,df,type="l",lwd=2,col="blue",xlab="x",ylab="F(x)", main="ALD Distribution function")
abline(h=1,lty=2)

##Inverse Distribution Function
prob = seq(0,1,length.out = 1000)
idf = qALD(prob=prob,mu=50,sigma=3,p=0.75)
plot(prob,idf,type="l",lwd=2,col="gray30",xlab="x",ylab=expression(F^{-1}~(x)))
title(main="ALD Inverse Distribution function")
abline(v=c(0,1),lty=2)

#Random Sample Histogram
sample = rALD(n=10000,mu=50,sigma=3,p=0.75)
hist(sample,breaks = 70,freq = FALSE,ylim=c(0,max(dens)),main="")
title(main="Histogram and True density")
lines(sseq,dens,col="red",lwd=2)

## Let's compute the MLE's

param = c(-323,40,0.9)
y = rALD(10000,mu = param[1],sigma = param[2],p = param[3])  #A random sample
res = mleALD(y)

#Comparing
cbind(param,res$par)

#Let's plot

seqq = seq(min(y),max(y),length.out = 1000)
dens = dALD(y=seqq,mu=res$par[1],sigma=res$par[2],p=res$par[3])
hist(y,breaks=50,freq = FALSE,ylim=c(0,max(dens)))
lines(seqq,dens,type="l",lwd=2,col="red",xlab="x",ylab="f(x)", main="ALD Density function")

}
