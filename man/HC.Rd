\name{HC}
\alias{HC}

\title{
Covariance Matrix - (HC0, HC2, HC3, HC4 and HC5)
}
\description{
This function calculates the covariance structure for heteroskedasticity linear regression model.
}
\usage{
HC(model, method=4, k=0.7)
}

\arguments{
  \item{model}{
     Any object of class \code{lm};
}
  \item{method}{
  Method HC that will be used to estimate the covariance structure. The argument \code{method}
  may be \code{0}, \code{2}, \code{3}, \code{4}  or \code{5};
}
  \item{k}{
   Constant used by the method HC5. The suggestion of the authors is to use \eqn{k = 0.7}.
}
}
\references{
Cribari-Neto, F. (2004). Asymptotic inference under heteroskedasticity of unknown
form. Computational Statistics and Data Analysis, 45, 215-233.

Cribari-Neto, F.; Souza, T.C.; Vasconcellos, K.L.P. (2007). Inference under heteros-
kedasticity and leveraged data. Communications in Statistics, Theory and Methods,
36, 1877-1888. [Errata: 37, 2008, 3329-3330.]

Horn, S.D.; Horn, R.A.; Duncan, D.B. (1975). Estimating heteroskedastic variances
in linear models. Journal of the American Statistical Association, 70, 380-385.

MacKinnon, J.G.; White, H. (1985). Some heteroskedasticity-consistent covariance
matrix estimators with improved finite-sample properties. Journal of Econometrics,
29, 305-325.

White, H. (1980). A heteroskedasticity-consistent covariance matrix estimator and
a direct test for heteroskedasticity. Econometrica, 48, 817-838.
}
\author{
Pedro Rafael Diniz Marinho <pedro.rafael.marinho@gmail.com>
}

\value{
Returns an object of class \code{matrix} with the estimated covariance matrix.
}

\examples{
data(schools)
datas = schools[-50L,]
y = datas$Expenditure 
x = datas$Income/10000
model = lm(y ~ x)
HC(model, method=4)
}

\keyword{heteroskedasticity}
\keyword{covariance}
