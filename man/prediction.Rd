% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Predicting_Function.R
\name{prediction}
\alias{prediction}
\title{Prediction Function for DROIIDS Data}
\usage{
prediction(analysis.name = NULL, save = FALSE, return.predict = FALSE)
}
\arguments{
\item{analysis.name}{A character string giving the name of the analysis that was used in the \code{DROIIDS} function.}

\item{save}{An indicator (\code{TRUE}/\code{FALSE}) of whether or not a CSV file should be created in the current working directory
recording the predicted estimates. By default, the predicted estimates are saved in the global environment as \code{paste("DROIIDS.",
<analysis.name>, ".predicted", sep="")}.}

\item{return.predict}{An indicator (\code{TRUE}/\code{FALSE}) of whether or not the predicted estimates should be returned
and printed.}
}
\description{
This function produces predicted values of data analyzed from the \code{DROIIDS} function.
}
\details{
Posterior means of the latent variables and covariates (if applicable) are used to find the predicted
   values using the data model in the DROIIDS equation:

     Data Model: \eqn{z_{i,t}=\Phi a_{i,t} + 1_L X_{i} \beta}

   Using the posterior means, the vector of estimated latent variables (\eqn{a_{i,t}}) at each time point within an individual is
   multiplied through the dimension reduction matrix (\eqn{\Phi}) to produce a single estimate for each location.
   If baseline covariates (\eqn{X_{i}}) are included in the analysis, the \eqn{X_{i} \beta} product will be added to each
   location's estimate. This produces a "fitted" value across individual, time, and location.

   The \code{analysis.name} is the character string that was specified in the \code{DROIIDS} function.  This analysis name will
   link the \code{prediction} function to the iterations and output that were saved both in the global environments and in .txt files in
   your current working directory.  If the iteration data are not currently in the global environment, this function
   will automatically read in all the necessary information before calculating the predicted values.

   \code{save = TRUE} will produce a CSV file in the current working directory with predicted estimates for individuals
   at all locations and time points. This provides predictions regardless of whether there are missing values in the raw
   data. The output file will be named \code{paste("DROIIDS_", <analysis.name>, "_Predicted_Values.csv", sep="")}.
}

