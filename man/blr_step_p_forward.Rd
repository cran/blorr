% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blr-stepwise-forward-regression.R
\name{blr_step_p_forward}
\alias{blr_step_p_forward}
\alias{blr_step_p_forward.default}
\alias{plot.blr_step_p_forward}
\title{Stepwise forward regression}
\usage{
blr_step_p_forward(model, ...)

\method{blr_step_p_forward}{default}(model, penter = 0.3, details = FALSE, ...)

\method{plot}{blr_step_p_forward}(x, model = NA, print_plot = TRUE, ...)
}
\arguments{
\item{model}{An object of class \code{lm}; the model should include all
candidate predictor variables.}

\item{...}{Other arguments.}

\item{penter}{p value; variables with p value less than \code{penter} will
enter into the model}

\item{details}{Logical; if \code{TRUE}, will print the regression result at
each step.}

\item{x}{An object of class \code{blr_step_p_forward}.}

\item{print_plot}{logical; if \code{TRUE}, prints the plot else returns a plot object.}
}
\value{
\code{blr_step_p_forward} returns an object of class \code{"blr_step_p_forward"}.
An object of class \code{"blr_step_p_forward"} is a list containing the
following components:

\item{model}{model with the least AIC; an object of class \code{glm}}
\item{steps}{number of steps}
\item{predictors}{variables added to the model}
\item{aic}{akaike information criteria}
\item{bic}{bayesian information criteria}
\item{dev}{deviance}
\item{indvar}{predictors}
}
\description{
Build regression model from a set of candidate predictor variables by
entering predictors based on p values, in a stepwise manner until there is
no variable left to enter any more.
}
\examples{
\dontrun{
# stepwise forward regression
model <- glm(honcomp ~ female + read + science, data = hsb2,
  family = binomial(link = 'logit'))
blr_step_p_forward(model)

# stepwise forward regression plot
model <- glm(honcomp ~ female + read + science, data = hsb2,
  family = binomial(link = 'logit'))
k <- blr_step_p_forward(model)
plot(k)

# final model
k$model

}

}
\references{
Chatterjee, Samprit and Hadi, Ali. Regression Analysis by Example. 5th ed. N.p.: John Wiley & Sons, 2012. Print.

Kutner, MH, Nachtscheim CJ, Neter J and Li W., 2004, Applied Linear Statistical Models (5th edition).
Chicago, IL., McGraw Hill/Irwin.
}
\seealso{
Other variable selection procedures: 
\code{\link{blr_step_aic_backward}()},
\code{\link{blr_step_aic_both}()},
\code{\link{blr_step_aic_forward}()},
\code{\link{blr_step_p_backward}()}
}
\concept{variable selection procedures}
