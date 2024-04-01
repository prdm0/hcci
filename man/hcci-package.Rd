\name{hcci-package}
\alias{hcci-package}
\alias{hcci}
\docType{package}
\title{Interval Estimation of Linear Models with Heteroskedasticity}
\description{Calculates the interval estimates for the parameters of linear models with heteroscedastic regression using bootstrap - (Wild Bootstrap) and double bootstrap-t (Wild Bootstrap). It is also possible to calculate confidence intervals using the percentile bootstrap and percentile bootstrap double. The package can calculate consistent estimates of the covariance matrix of the parameters of linear regression models with heteroscedasticity of unknown form. The package also provides a function to consistently calculate the covariance matrix of the parameters of linear models with heteroscedasticity of unknown form. The bootstrap methods exported by the package are based on the master's thesis of the first author, available at https://raw.githubusercontent.com/prdm0/hcci/master/references/dissertacao_mestrado.pdf. The hcci package in previous versions was cited in the book VINOD, Hrishikesh D. Hands-on Intermediate Econometrics Using R: Templates for Learning Quantitative Methods and R Software. 2022, p. 441, ISBN 978-981-125-617-2 (hardcover). The simple bootstrap schemes are based on the works of Cribari-Neto F and Lima M. G. (2009) https://doi.org/10.1080/00949650801935327, while the double bootstrap schemes for the parameters that index the linear models with heteroscedasticity of unknown form are based on the works of Beran (1987) https://doi.org/10.2307/2336685. The use of bootstrap for the calculation of interval estimates in regression models with heteroscedasticity of unknown form from a weighting of the residuals was proposed by Wu (1986) https://dx.doi.org/10.1214/aos/1176350142. This bootstrap scheme is known as weighted or wild bootstrap.}
\details{
\tabular{ll}{
Package: \tab hcci\cr
Type: \tab Package\cr
Version: \tab 1.1.0\cr
Date: \tab 2024-03-30\cr
License: \tab GPL (>=3)\cr
}
}
\author{
Maintainer: Pedro Rafael Diniz Marinho <pedro.rafael.marinho@gmail.com>

Contributor: Francisco Cribari Neto <cribari@de.ufpe.br>
}
\references{
Cribari-Neto, F. (2004). Asymptotic inference under heteroskedasticity of unknown
form. Computational Statistics and Data Analysis, 45, 215-233.

Cribari-Neto, F.; Lima, M.G. (2009). Heteroskedasticity-consistent interval estimators. Journal of Statistical Computation and Simulation, 79, 787-803;

Cribari-Neto, F.; Souza, T.C.; Vasconcellos, K.L.P. (2007). Inference under heteros-
kedasticity and leveraged data. Communications in Statistics, Theory and Methods,
36, 1877-1888. [Errata: 37, 2008, 3329-3330.]

Horn, S.D.; Horn, R.A.; Duncan, D.B. (1975). Estimating heteroskedastic variances
in linear models. Journal of the American Statistical Association, 70, 380-385.

MacKinnon, J.G.; White, H. (1985). Some heteroskedasticity-consistent covariance
matrix estimators with improved finite-sample properties. Journal of Econometrics,
29, 305-325.

McCullough, B.D; Vinod, H.D. (1998). Implementing the double bootstrap, 12, 79-95.

White, H. (1980). A heteroskedasticity-consistent covariance matrix estimator and
a direct test for heteroskedasticity. Econometrica, 48, 817-838.

Wu, C.F.J. (1986). Jackknife, bootstrap and other resampling methods in regression analysis, 14, 1261-1295;
}

