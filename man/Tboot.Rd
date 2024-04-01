\name{Tboot}
\alias{Tboot}
\title{
Bootstrap-t Confidence Interval (Wild Bootstrap) - Linear Models Heteroskedasticity
}
\description{
This function calculates confidence intervals for the parameters in heteroskedasticity linear regression models. Ranges are estimated by the bootstrap-t and double bootstrap-t.
}
\usage{
Tboot(model, significance=0.05, hc=4, double=FALSE, J=NULL, K=NULL,
      distribution="rademacher")
}

\arguments{
  \item{model}{
    Any object of class \code{lm};
}
  \item{significance}{
    Significance level of the test. By default, the level of significance is \code{0.05};
}
  \item{hc}{
  Method HC that will be used to estimate the covariance structure. The argument \code{method}
  may be \code{0}, \code{2}, \code{3}, \code{4}  or \code{5};
}
  \item{double}{
    If \code{double = TRUE} will be calculated intervals bootstrap-t and double bootstrap-t. The
    default is \code{double = FALSE};
}
  \item{J}{
   Number of replicas of the first bootstrap; 
}
  \item{K}{
  Number of replicas of the second bootstrap;
}
  \item{distribution}{
   Distribution of the random variable with mean zero and variance one. This random variable multiplies the error estimates in the generation of the samples. The argument \code{distribution} can be rademacher or normal (standard normal). The default is \code{distribution = rademacher}.
}
}

\value{
  A list with the following components:

  \item{beta}{A numeric vector of length 2 containing the estimated coefficients of the model.}

  \item{ci_lower_simple}{A numeric vector of length 2 containing the lower bounds of the simple bootstrap confidence intervals for the coefficients.}

  \item{ci_upper_simple}{A numeric vector of length 2 containing the upper bounds of the simple bootstrap confidence intervals for the coefficients.}

  \item{ci_lower_double}{A logical vector of length 0 or 2. If `double = FALSE`, this will be a logical vector of length 0. If `double = TRUE`, this will be a numeric vector containing the lower bounds of the double bootstrap confidence intervals for the coefficients.}

  \item{ci_upper_double}{A logical vector of length 0 or 2. If `double = FALSE`, this will be a logical vector of length 0. If `double = TRUE`, this will be a numeric vector containing the upper bounds of the double bootstrap confidence intervals for the coefficients.}

  \item{J}{A numeric value indicating the number of bootstrap resamples used in the simple bootstrap.}

  \item{K}{A numeric value indicating the number of bootstrap resamples used in the double bootstrap, if `double = TRUE`.}
}

\references{
Booth, J.G. and Hall, P. (1994). Monte Carlo approximation and the iterated bootstrap. Biometrika, 81, 331-340.

Cribari-Neto, F.; Lima, M.G. (2009). Heteroskedasticity-consistent interval estimators. Journal of Statistical Computation and Simulation, 79, 787-803;

Wu, C.F.J. (1986). Jackknife, bootstrap and other resampling methods in regression analysis, 14, 1261-1295;

McCullough, B.D; Vinod, H.D. (1998). Implementing the double bootstrap, 12, 79-95.
}
\author{
Pedro Rafael Diniz Marinho <pedro.rafael.marinho@gmail.com>
}

\examples{
data(schools)
datas = schools[-50,]
y = datas$Expenditure 
x = datas$Income/10000
model = lm(y ~ x)
Tboot(model=model, significance = 0.05, hc = 4, double = FALSE,
      J=1000, K = 100, distribution = "rademacher")
}

\seealso{
\code{\link{Pboot}}.
}

\keyword{bootstrap}
\keyword{heteroscedasticity}
