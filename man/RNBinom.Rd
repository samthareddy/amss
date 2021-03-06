% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/random_number_generator.R
\name{RNBinom}
\alias{RNBinom}
\title{Simulate random number from the negative binomial distribution.}
\usage{
RNBinom(n, size, prob, mu)
}
\arguments{
\item{n}{number of observations. If \code{length(n) > 1}, the length is
taken to be the number required.}

\item{size}{number of trials (zero or more). When \code{size} is a vector,
the number of trials for each observation.}

\item{prob}{probability of success on each trial. When \code{prob} is a
vector, each entry refers to the probability of success for trials
associated with the corresponding observation.}

\item{mu}{alternative parametrization via mean: see 'Details' in
documentation for \code{rnbinom()}.}
}
\value{
Random numbers from the negative binomial distribution, or its normal
  approximation. The function will return a numeric value, rather than an
  integer.
}
\description{
Generate random integers from the negative binomial distribution when
possible within integer overflow constraints. Otherwise, approximate with the
normal distribution.
}
\keyword{internal}

