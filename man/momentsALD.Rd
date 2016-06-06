\name{momentsALD}
\alias{momentsALD}
\alias{meanALD}
\alias{varALD}
\alias{skewALD}
\alias{kurtALD}
\alias{momentALD}
\alias{absALD}

\title{Moments for the Asymmetric Laplace Distribution
}
\description{Mean, variance, skewness, kurtosis, central moments w.r.t \code{mu} and first absolute central moment for the Three-Parameter Asymmetric Laplace Distribution defined in Koenker and Machado (1999) useful for quantile regression with location parameter equal to \code{mu}, scale parameter \code{sigma} and skewness parameter \code{p}.
}
\usage{
meanALD(mu=0,sigma=1,p=0.5)
varALD(mu=0,sigma=1,p=0.5)
skewALD(mu=0,sigma=1,p=0.5)
kurtALD(mu=0,sigma=1,p=0.5)
momentALD(k=1,mu=0,sigma=1,p=0.5)
absALD(sigma=1,p=0.5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{k}{
moment number.
}
  \item{mu}{
location parameter \eqn{\mu}.
}
  \item{sigma}{
scale parameter \eqn{\sigma}.
}
  \item{p}{
skewness parameter \eqn{p}.
}
}
\details{
If \code{mu}, \code{sigma} or \code{p} are not specified they assume the default values of 0, 1 and 0.5, respectively, belonging to the Symmetric Standard Laplace Distribution denoted by \eqn{ALD(0,1,0.5)}.

As discussed in Koenker and Machado (1999) and Yu and Moyeed (2001) we say that a random variable
Y is distributed as an ALD with location parameter \eqn{\mu}, scale parameter \eqn{\sigma>0} and skewness parameter \eqn{p} in (0,1), if its probability density function (pdf) is given by

\deqn{f(y|\mu,\sigma,p)=\frac{p(1-p)}{\sigma}\exp
{-\rho_{p}(\frac{y-\mu}{\sigma})}}

where \eqn{\rho_p(.)} is the so called check (or loss) function defined by
\deqn{\rho_p(u)=u(p - I_{u<0})},
with \eqn{I_{.}} denoting the usual indicator function. This  distribution is denoted by \eqn{ALD(\mu,\sigma,p)} and it's \eqn{p}th quantile is equal to \eqn{\mu}. The scale parameter \code{sigma} must be positive and non zero. The skew parameter \code{p} must be between zero and one (0<\code{p}<1).
}
\value{
\code{meanALD} gives the mean, \code{varALD} gives the variance, \code{skewALD} gives the skewness, \code{kurtALD} gives the kurtosis, \code{momentALD} gives the \eqn{k}th central moment, i.e., \eqn{E(y-\mu)^k} and \code{absALD} gives the first absolute central moment denoted by \eqn{E|y-\mu|}.
}

\references{
Koenker, R., Machado, J. (1999). Goodness of fit and related inference processes for quantile
regression. J. Amer. Statist. Assoc. 94(3):1296-1309.

Yu, K. & Moyeed, R. (2001). Bayesian quantile regression. Statistics & Probability Letters, 54(4), 437-447.

Yu, K., & Zhang, J. (2005). A three-parameter asymmetric Laplace distribution and its extension. Communications in Statistics-Theory and Methods, 34(9-10), 1867-1879.
}

\author{
Christian E. Galarza <\email{cgalarza88@gmail.com}> and 
Victor H. Lachos <\email{hlachos@ime.unicamp.br}>
}

\seealso{
\code{\link{ALD}},\code{\link{likALD}},\code{\link{mleALD}}
}

\examples{
## Let's compute some moments for a Symmetric Standard Laplace Distribution.

#Third raw moment
momentALD(k=3,mu=0,sigma=1,p=0.5)

#The well known mean, variance, skewness and kurtosis
meanALD(mu=0,sigma=1,p=0.5)
varALD(mu=0,sigma=1,p=0.5)
skewALD(mu=0,sigma=1,p=0.5)
kurtALD(mu=0,sigma=1,p=0.5)

# and this guy
absALD(sigma=1,p=0.5)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{asymmetric laplace distribution}
\keyword{quantile regression}
\keyword{Laplace}
\keyword{moments}
\keyword{ALD}