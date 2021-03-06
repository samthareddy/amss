% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/module_natural_migration.R
\name{DefaultNatMigModule}
\alias{DefaultNatMigModule}
\title{Model natural consumer behavior in the absence of marketing interventions.}
\usage{
DefaultNatMigModule(data.dt, population, market.rate.trend = 1,
  market.rate.seas = 1, sat.decay = 1,
  prop.activity = rep(1/length(kActivityStates), length(kActivityStates)),
  prop.favorability = rep(1/length(kFavorabilityStates),
  length(kFavorabilityStates)), prop.loyalty = rep(1/length(kLoyaltyStates),
  length(kLoyaltyStates)),
  prop.availability = rep(1/length(kAvailabilityStates),
  length(kAvailabilityStates)), transition.matrices = list())
}
\arguments{
\item{data.dt}{data.table with rows corresponding to segments and columns
corresponding to variables; column \code{pop} for the number of
people in each segment must be included.}

\item{population}{constant specifying population size}

\item{market.rate.trend}{the trend in market size, written as the proportion
of the population to be considered potentially in the market, pending
seasonal adjustments. If a vector, should match time.n in length.
Defaults to 1, for full population participation in market.}

\item{market.rate.seas}{the seasonal variation in market size, written as
the proportion of the post-market-trend population in the market. For
example, for market.rate.trend = 0.8 and market.rate.seas = 0.5,
seasonal variation leaves 40% = 50% of the 80% of the population
potentially in market according to market.rate.trend actually in
market. If a vector, should match time.n in length. Defaults to 1 for
full population participation in market.}

\item{sat.decay}{single numeric value between 0 and 1, representing the
geometric decay rate at which satiated individuals become unsatiated.
Defaults to 1 for satiation lasting 1 time period for all
individuals.}

\item{prop.activity}{vector of nonnegative values summing to 1, representing
the proportion of the population to be assigned to each activity
state, given they are "responsive," i.e., "in.market" and
"unsatiated."}

\item{prop.favorability}{vector of nonnegative values summing to 1,
representing the proportion of the population to be assigned to each
favorability state, given they are not "loyal."}

\item{prop.loyalty}{vector of nonnegative values summing to 1, representing
the proportion of the population to be assigned to each loyalty
state.}

\item{prop.availability}{vector of nonnegative values summing to 1,
representing the proportion of the population to be assigned to each
availability state.}

\item{transition.matrices}{list of matrices for each dimension of population
segmentation that may be affected by marketing interventions. A named
list with members 'activity', 'favorability', 'loyalty', and
'availability' is expected. By default, any missing members will have
no effect. The transition matrices represent natural migration in
these dimensions, and control how quickly the population returns to
its equilibrium allocation across segments after marketing
interventions.}
}
\value{
\code{invisible(NULL)}. \code{data.dt} is updated by reference.
}
\description{
This function models natural consumer behavior in the absence of marketing
interventions. In particular, it models changes in consumer mindset over
time that are outside of advertiser control, such as seasonal changes.
}

