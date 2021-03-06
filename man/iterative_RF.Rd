% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/iterative_RF.R
\name{iterative_RF}
\alias{iterative_RF}
\title{Fits iterative random forest algorithm.}
\usage{
iterative_RF(X, y, drop_fraction, keep_fraction, mtry_factor,
  ntree_factor = 10, min_ntree = 5000, num_processors = 1, nodesize)
}
\arguments{
\item{X}{A data.frame.
Each column corresponds to a feature vectors.}

\item{y}{Response vector.}

\item{drop_fraction}{A number between 0 and 1.  Percentage of features
dropped at each iteration.}

\item{keep_fraction}{A number between 0 and 1. Proportion features
from each module to retain at screening step.}

\item{mtry_factor}{A positive number.  Mtry for each random forest
is set to
\code{ceiling}(\eqn{\sqrt{p}}\code{mtry_factor})
where \code{p} is the current number of features.}

\item{ntree_factor}{A number greater than 1.  \code{ntree} for each
random is \code{ntree_factor} times the number
of features.  For each random forest, \code{ntree}
is set to \code{max}(\code{min_ntree},
\code{ntree_factor}*\code{p}).}

\item{min_ntree}{Minimum number of trees grown in each random forest.}

\item{num_processors}{Number of processors used to fit random forests.}

\item{nodesize}{Minimum nodesize.}
}
\value{
A data.frame with the top ranked features.
}
\description{
Fits iterative random forest algorithm.  Returns
data.frame with variable importances and top rated features.
}
\note{
This work was partially funded by NSF IIS 1251151.
}

