% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blr-gains-table.R
\name{blr_decile_capture_rate}
\alias{blr_decile_capture_rate}
\title{Event rate by decile}
\usage{
blr_decile_capture_rate(
  gains_table,
  xaxis_title = "Decile",
  yaxis_title = "Capture Rate",
  title = "Capture Rate by Decile",
  bar_color = "blue",
  text_size = 3.5,
  text_vjust = -0.3,
  print_plot = TRUE
)
}
\arguments{
\item{gains_table}{An object of class \code{blr_gains_table}.}

\item{xaxis_title}{X axis title.}

\item{yaxis_title}{Y axis title.}

\item{title}{Plot title.}

\item{bar_color}{Bar color.}

\item{text_size}{Size of the bar labels.}

\item{text_vjust}{Vertical justification of the bar labels.}

\item{print_plot}{logical; if \code{TRUE}, prints the plot else returns a plot object.}
}
\description{
Visualize the decile wise event rate.
}
\examples{
model <- glm(honcomp ~ female + read + science, data = hsb2,
             family = binomial(link = 'logit'))
gt <- blr_gains_table(model)
blr_decile_capture_rate(gt)

}
\seealso{
Other model validation techniques: 
\code{\link{blr_confusion_matrix}()},
\code{\link{blr_decile_lift_chart}()},
\code{\link{blr_gains_table}()},
\code{\link{blr_gini_index}()},
\code{\link{blr_ks_chart}()},
\code{\link{blr_lorenz_curve}()},
\code{\link{blr_roc_curve}()},
\code{\link{blr_test_hosmer_lemeshow}()}
}
\concept{model validation techniques}
