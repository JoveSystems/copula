\name{plot-methods}
\alias{plot-methods}
\alias{plot,Copula,ANY-method}
\alias{plot,mvdc,ANY-method}
\docType{methods}
\title{Methods for 'plot' in Package 'copula'}
\description{
  Methods for \code{\link{plot}()} to draw a scatter plot of a random
  sample from bivariate distributions from package \pkg{copula}.
}
\usage{% ../R/graphics.R
\S4method{plot}{Copula,ANY}(x, n, xlim = 0:1, ylim = 0:1,
      xlab = quote(U[1]), ylab = quote(U[2]), main = NULL, \dots)
\S4method{plot}{mvdc,ANY}(x, n, xlim = NULL, ylim = NULL,
      xlab = quote(X[1]), ylab = quote(X[2]), \dots)
}
\arguments{
  \item{x}{a \emph{bivariate} \code{"\linkS4class{matrix}"},
    \code{"\linkS4class{data.frame}"}, \code{"\linkS4class{Copula}"} or
    a \code{"\linkS4class{mvdc}"} object.}
  \item{n}{when \code{x} is not matrix-like: The sample size of the
    random sample drawn from \code{x}.}
  \item{xlim, ylim}{the x- and y-axis limits.}
  \item{xlab, ylab}{the x- and y-axis labels.}
  \item{main}{the main title; when true, shows the call's \code{x}
    \dQuote{expression}.  By default, when \code{NULL} and the \code{x}
    expression matches \code{"[Cc]opula"} that expression is used as
    well.  This smart default is somewhat experimental; feedback is welcome.}
  \item{\dots}{additional arguments passed to \code{\link{plot}}
    methods, i.e., typically \code{\link{plot.default}}.}
}
\value{invisible().
}
%\author{Marius Hofert}
\seealso{
  \code{\link{splom2}()} for a scatter-plot \emph{matrix} based on
  \code{\link[lattice]{splom}()}.
}
\examples{
## For 2-dim. 'copula' objects -------------------------
## Plot uses  n  compula samples
n <- 1000 # sample size
set.seed(271) # (reproducibility)
plot(tCopula(-0.8, df = 1.25), n = n) # automatic main title!

nu <- 3 # degrees of freedom
tau <- 0.5 # Kendall's tau
th <- iTau(tCopula(df = nu), tau) # corresponding parameter
cop <- tCopula(th, df = nu) # define 2-d copula object
plot(cop, n = n)

## For 2-dim. 'mvdc' objects ---------------------------
mvNN <- mvdc(cop, c("norm", "norm"),
             list(list(mean = 0, sd = 1), list(mean = 1)))
plot(mvNN, n = n)
}
\keyword{hplot}
