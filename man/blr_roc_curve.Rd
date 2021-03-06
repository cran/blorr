% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blr-roc-curve.R
\name{blr_roc_curve}
\alias{blr_roc_curve}
\title{ROC curve}
\usage{
blr_roc_curve(
  gains_table,
  title = "ROC Curve",
  xaxis_title = "1 - Specificity",
  yaxis_title = "Sensitivity",
  roc_curve_col = "blue",
  diag_line_col = "red",
  point_shape = 18,
  point_fill = "blue",
  point_color = "blue",
  plot_title_justify = 0.5,
  print_plot = TRUE
)
}
\arguments{
\item{gains_table}{An object of class \code{blr_gains_table}.}

\item{title}{Plot title.}

\item{xaxis_title}{X axis title.}

\item{yaxis_title}{Y axis title.}

\item{roc_curve_col}{Color of the roc curve.}

\item{diag_line_col}{Diagonal line color.}

\item{point_shape}{Shape of the points on the roc curve.}

\item{point_fill}{Fill of the points on the roc curve.}

\item{point_color}{Color of the points on the roc curve.}

\item{plot_title_justify}{Horizontal justification on the plot title.}

\item{print_plot}{logical; if \code{TRUE}, prints the plot else returns a plot object.}
}
\description{
Receiver operating characteristic curve (ROC) curve is used for assessing
  accuracy of the model classification.
}
\examples{
model <- glm(honcomp ~ female + read + science, data = hsb2,
             family = binomial(link = 'logit'))
k <- blr_gains_table(model)
blr_roc_curve(k)

}
\references{
Agresti, A. (2007), An Introduction to Categorical Data Analysis, Second Edition, New York: John Wiley & Sons.

Hosmer, D. W., Jr. and Lemeshow, S. (2000), Applied Logistic Regression, 2nd Edition, New York: John Wiley & Sons.

Siddiqi  N  (2006):  Credit  Risk  Scorecards:  developing  and  implementing  intelligent
credit  scoring. New Jersey, Wiley.

Thomas  LC,  Edelman  DB,  Crook  JN  (2002):  Credit  Scoring  and  Its  Applications.  Philadelphia,
SIAM Monographs on Mathematical Modeling and Computation.
}
\seealso{
Other model validation techniques: 
\code{\link{blr_confusion_matrix}()},
\code{\link{blr_decile_capture_rate}()},
\code{\link{blr_decile_lift_chart}()},
\code{\link{blr_gains_table}()},
\code{\link{blr_gini_index}()},
\code{\link{blr_ks_chart}()},
\code{\link{blr_lorenz_curve}()},
\code{\link{blr_test_hosmer_lemeshow}()}
}
\concept{model validation techniques}
