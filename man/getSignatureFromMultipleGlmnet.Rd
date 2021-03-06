% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/biomarker.R
\name{getSignatureFromMultipleGlmnet}
\alias{getSignatureFromMultipleGlmnet}
\title{Use Lasso to do feature selection}
\usage{
getSignatureFromMultipleGlmnet(df.input, target.vec, nfolds = 10,
  logisticRegression = TRUE, nRun = 100, alpha = 1)
}
\arguments{
\item{df.input}{Row is sample, column is feature. Required}

\item{target.vec}{y vector. Required}

\item{nfolds}{glmnet CV nfolds}

\item{logisticRegression}{doing logistic regression or linear regression.}

\item{nRun}{number of glmnet runs}

\item{alpha}{same as in glmnet}
}
\value{
signature
}
\description{
Use Lasso to do feature selection
}
\examples{
data('iris')
getSignatureFromMultipleGlmnet(iris[,1:4],
c(rep(1,100), rep(0,50)), nfolds = 3, nRun = 10)
}
