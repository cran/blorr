% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blr-model-fit-stats.R
\name{blr_rsq_count}
\alias{blr_rsq_count}
\title{Count R2}
\usage{
blr_rsq_count(model)
}
\arguments{
\item{model}{An object of class \code{glm}.}
}
\value{
Count r-squared.
}
\description{
Count r-squared.
}
\examples{
model <- glm(honcomp ~ female + read + science, data = hsb2,
            family = binomial(link = 'logit'))

blr_rsq_count(model)

}
\concept{model fit statistcs}
