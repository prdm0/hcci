\name{QT}
\alias{QT}

\title{
  Quasi-t test in linear regression models
}
\description{
  This function performs the quasi-t test for the parameters that index linear regression models, considering models with unknown heteroscedasticity, where HC methods are used to estimate the covariance matrix.
}
\usage{
  QT(model, significance = 0.05, hc=4, h0=0, ...)
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
  \item{h0}{
    Constant used in the null hypothesis (default is \code{h0 = 0});
  }
  \item{...}{
    Additional arguments to be passed to the function \code{HC}.
  }
}

\references{
  Cribari-Neto, F. (2004). Asymptotic inference under heteroskedasticity of unknown
  form. Computational Statistics and Data Analysis, 45, 215-233.
}

\author{
  Pedro Rafael Diniz Marinho <pedro.rafael.marinho@gmail.com>
}

\value{
  Returns an object of class \code{list} with the estimated covariance matrix.
}

\examples{
  library(hcci)
  data(schools)
  y = schools$Expenditure # dependent variable
  x = schools$Income/10000 # regressor scaled by 10^4
  model_1 = lm(y ~ x)
  model_2 = lm(y ~ x+I(x^2))
  QT(model_1, significance = 0.05, hc=4, h0=0)
  QT(model_2, significance = 0.05, hc=4, h0=0)
}

\keyword{heteroskedasticity}
\keyword{covariance}
