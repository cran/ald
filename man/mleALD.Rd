\name{mleALD}
\alias{mleALD}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{Maximum Likelihood Estimators (MLE) for the Asymmetric Laplace Distribution
}
\description{Maximum Likelihood Estimators (MLE) for the Three-Parameter Asymmetric Laplace Distribution defined in Koenker and Machado (1999) useful for quantile regression with location parameter equal to \code{mu}, scale parameter \code{sigma} and skewness parameter \code{p}.
}
\usage{
mleALD(y, initial = NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{y}{
observation vector.
}
  \item{initial}{
optional vector of initial values c(\eqn{\mu,\sigma,p}).
}
}
\details{
The algorithm computes iteratevely the MLE's via the combination of the MLE expressions for \eqn{\mu} and \eqn{\sigma}, and then maximizing with rescpect to \eqn{p} the Log-likelihood function (\code{likALD}) using the well known \code{optimize} R function. By default the tolerance is 10^-5 for all parameters.
}
\value{
The function returns a list with two objects
\item{iter}{
iterations to reach convergence.
}
\item{par}{
vector of Maximum Likelihood Estimators.
}
}

\references{
Yu, K., & Zhang, J. (2005). A three-parameter asymmetric Laplace distribution and its extension. Communications in Statistics-Theory and Methods, 34(9-10), 1867-1879.
}

\author{
Christian E. Galarza <\email{cgalarza88@gmail.com}> and 
Victor H. Lachos <\email{hlachos@ime.unicamp.br}>
}

\seealso{
\code{\link{ALD}},\code{\link{momentsALD}},\code{\link{likALD}}
}

\examples{
## Let's try this function

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

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{asymmetric laplace distribution}
\keyword{quantile regression}
\keyword{Laplace}
\keyword{MLE}
\keyword{Maximum likelihood estimators}
\keyword{ALD}