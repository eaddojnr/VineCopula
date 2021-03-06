% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BiCopIndTest.R
\name{BiCopIndTest}
\alias{BiCopIndTest}
\title{Independence Test for Bivariate Copula Data}
\usage{
BiCopIndTest(u1, u2)
}
\arguments{
\item{u1, u2}{Data vectors of equal length with values in [0,1].}
}
\value{
\item{statistic}{Test statistic of the independence test.}
\item{p.value}{P-value of the independence test.}
}
\description{
This function returns the p-value of a bivariate asymptotic independence
test based on Kendall's \eqn{\tau}.
}
\details{
The test exploits the asymptotic normality of the test statistic
\deqn{\texttt{statistic} := T =
\sqrt{\frac{9N(N - 1)}{2(2N + 5)}} \times |\hat{\tau}|, }{
statistic := T = ( (9N(N-1)) / (2(2N+5)) )^0.5 * |\tau|, }
where \eqn{N} is the number of observations (length of \code{u1}) and
\eqn{\hat{\tau}} the empirical Kendall's tau of the data vectors \code{u1}
and \code{u2}. The p-value of the null hypothesis of bivariate independence
hence is asymptotically
\deqn{\texttt{p.value} = 2 \times \left(1 - \Phi\left(T\right)\right), }{
p.value = 2*(1-\Phi(T)), }
where \eqn{\Phi} is the standard normal distribution function.
}
\examples{
\dontshow{set.seed(123)}
## Example 1: Gaussian copula with large dependence parameter
cop <- BiCop(1, 0.7)
dat <- BiCopSim(500, cop)

# perform the asymptotic independence test
BiCopIndTest(dat[, 1], dat[, 2])

## Example 2: Gaussian copula with small dependence parameter
cop <- BiCop(1, 0.01)
dat <- BiCopSim(500, cop)

# perform the asymptotic independence test
BiCopIndTest(dat[, 1], dat[, 2])

}
\author{
Jeffrey Dissmann
}
\references{
Genest, C. and A. C. Favre (2007). Everything you always wanted
to know about copula modeling but were afraid to ask. Journal of Hydrologic
Engineering, 12 (4), 347-368.
}
\seealso{
\code{\link{BiCopGofTest}}, \code{\link{BiCopPar2Tau}},
\code{\link{BiCopTau2Par}}, \code{\link{BiCopSelect}},\cr
\code{\link{RVineCopSelect}}, \code{\link{RVineStructureSelect}}
}

