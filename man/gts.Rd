\name{gts}
\Rdversion{1.1}
\alias{gts}
\title{Create a grouped time series}
\description{
Method for creating grouped time series. For a grouped time series, there is 
no need for a hierarchical structure.
}
\usage{
gts(y, groups, gnames = rownames(groups))
}
\arguments{
  \item{y}{Multivariate time series contains the bottom level series}
  \item{groups}{Group matrix indicates the group structure, with one column for
each series when completely disaggregated, and one row for each grouping of the 
time series.}
  \item{gnames}{Specify the group names.}
}
\value{
  \item{bts}{Multivariate time series contains the bottom level series}
  \item{groups}{Information about the groups of a grouped time series}
  \item{labels}{Information about the labels that are used for plotting.}
}
\references{
R. J. Hyndman, R. A. Ahmed, G. Athanasopoulos and H.L. Shang (2011) 
Optimal combination forecasts for hierarchical time series. 
\emph{Computational Statistics and Data Analysis}, \bold{55}(9), 2579--2589.
\url{http://robjhyndman.com/papers/hierarchical/}
}
\author{Rob J Hyndman}

\seealso{
\code{\link[hts]{accuracy.gts}}, \code{\link[hts]{forecast.gts}}, \code{\link[hts]{plot.gts}}
}

\examples{
abc <- ts(5 + matrix(sort(rnorm(1600)), ncol = 16, nrow = 100))
sex <- rep(c("female", "male"), each = 8)
state <- rep(c("NSW", "VIC", "QLD", "SA", "WA", "NT", "ACT", "TAS"), 2)
gc <- rbind(sex, state)  
gn <- rbind(rep(1:2, each = 8), rep(1:8, 2))
rownames(gc) <- c("Sex", "State")
x <- gts(abc, gc)
y <- gts(abc, gn)
}

\keyword{ts}