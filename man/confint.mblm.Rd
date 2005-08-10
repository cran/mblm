\name{confint.mblm}
\alias{confint.mblm}
\title{ Confidence Intervals for 'mblm' Model }
\description{

   Computes confidence intervals for one or more parameters in a
   fitted model of 'mblm' class.

}
\usage{
confint.mblm(object, parm, level = 0.95, ...)
}
\arguments{
  \item{object}{ a fitted model object }
  \item{parm}{ a specification of which parameters are to be given
          confidence intervals, either a vector of numbers or a vector
          of names. Not yet implemented for 'mblm'}
  \item{level}{ the confidence level required }
  \item{...}{ additional arguments }
}
\details{

This function computes confidence intervals for slope and intercept in
linear model based on single median or repeated medians. The confidence
intervals are computed in simpliest way, as confidence interval for the
median of all slopes or intercepts found during fitting.

}
\value{

     A matrix (or vector) with columns giving lower and upper
     confidence limits for each parameter. 

}
\references{ 

Sen, P.K. (1968). Estimates of Regression Coefficient Based on Kendall's tau. J. Am. Stat.
Ass. 63, 324, 1379-1389.

}

\author{ Lukasz Komsta }
\note{ 

The recommended method of calculating confidence intervals, given by Sen and based on
Kendall's tau, not Wilcoxon test, is not implemented at this time and is considered 
to be implemented in next version of this package.

}

\seealso{ \code{\link{mblm}}, \code{\link{summary.mblm}}}

\examples{
set.seed(1234)
x <- 1:100+rnorm(100)
y <- x+rnorm(100)
y[100] <- 200
fit <- mblm(y~x)
fit
summary(fit)
confint(fit)
}
\keyword{models}
