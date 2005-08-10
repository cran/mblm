\name{summary.mblm}
\alias{summary.mblm}
\title{ Summarizing median-based linear models }
\description{
  'summary' method for class 'mblm'
}
\usage{
summary.mblm(object, ...)
}
\arguments{
  \item{object}{ an object of class 'mblm', usually, a result of a call to 'mblm'.}
  \item{...}{ additional arguments }
}
\details{
  This function is based on \code{summary.lm} code, and the base difference is use
  of nonparametric \code{wilcox.test} to obtain significance and \code{mad} instead
  of standard error of estimates. Of course you can force standard \code{lm} behavior
  by calling \code{summary.lm}, but values received in such way has low cognitive value.

}
\value{
  For the return value, see \code{\link{summary.lm}}. Summary of 'mblm' class does not
  contain R-squared values and F-test result.
}
\references{ 

Theil, H. (1950) A rank invariant method for linear and polynomial regression analysis.
Nederl. Akad. Wetensch. Proc. Ser. A 53, 386-392 (Part I), 521-525 (Part II), 1397-1412
(Part III).

Sen, P.K. (1968). Estimates of Regression Coefficient Based on Kendall's tau. J. Am. Stat.
Ass. 63, 324, 1379-1389.

Siegel, A.F. (1982). Robust Regression Using Repeated Medians. Biometrika, 69, 1, 242-244.

 }
\author{ Lukasz Komsta }
\note{ 
  The significance of estimators can be computed more "lege artis" based on Kendall's tau,
  as suggested by Sen, but today such feature is not yet implemented.
}

\seealso{ \code{\link{summary.lm}}, \code{\link{mblm}}, \code{\link{confint.mblm}}}
\examples{

set.seed(1234)
x <- 1:10+rnorm(10)
y <- x+rnorm(10)
y[10] <- 20
fit <- mblm(y~x)
summary(fit)

}
\keyword{models}
