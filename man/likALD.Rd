\name{likALD}
\alias{likALD}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{Log-Likelihood function for the Asymmetric Laplace Distribution
}
\description{Log-Likelihood function for the Three-Parameter Asymmetric Laplace Distribution defined in Koenker and Machado (1999) useful for quantile regression with location parameter equal to \code{mu}, scale parameter \code{sigma} and skewness parameter \code{p}.
}
\usage{
likALD(y, mu = 0, sigma = 1, p = 0.5, loglik = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{y}{
observation vector.
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
  \item{loglik}{
logical; if TRUE (default), the Log-likelihood is return, if not just the Likelihood.
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
with \eqn{I_{.}} denoting the usual indicator function. Then the Log-likelihood function is given by

\deqn{\sum_{i=1}^{n}log(\frac{p(1-p)}{\sigma}\exp
{-\rho_{p}(\frac{y_i-\mu}{\sigma})})}.

The scale parameter \code{sigma} must be positive and non zero. The skew parameter \code{p} must be between zero and one (0<\code{p}<1).
}
\value{
\code{likeALD} returns the Log-likelihood by default and just the Likelihood if \code{loglik = FALSE}.
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
\code{\link{ALD}},\code{\link{momentsALD}},\code{\link{mleALD}}
}

\examples{
## Let's compute the log-likelihood for a given sample

y = rALD(n=1000)
loglik = likALD(y)

#Changing the true parameters the loglik must decrease
loglik2 = likALD(y,mu=10,sigma=2,p=0.3)

loglik;loglik2
if(loglik>loglik2){print("First parameters are Better")}
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{asymmetric laplace distribution}
\keyword{quantile regression}
\keyword{Laplace}
\keyword{Log-likelihood}
\keyword{likelihood}
\keyword{ALD}