% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/all-equal.r
\name{all.equal.tbl_df}
\alias{all.equal.tbl_df}
\alias{all.equal.tbl_dt}
\title{Provide a useful implementation of all.equal for data.frames.}
\usage{
\method{all.equal}{tbl_df}(target, current, ignore_col_order = TRUE,
  ignore_row_order = TRUE, convert = FALSE, ...)

\method{all.equal}{tbl_dt}(target, current, ignore_col_order = TRUE,
  ignore_row_order = TRUE, convert = FALSE, ...)
}
\arguments{
\item{target,current}{two data frames to compare}

\item{ignore_col_order}{should order of columns be ignored?}

\item{ignore_row_order}{should order of rows be ignored?}

\item{convert}{Should similar classes be converted? Currently this will
convert factor to character and integer to double.}

\item{...}{Ignored. Needed for compatibility with the generic.}
}
\value{
\code{TRUE} if equal, otherwise a character vector describing
  the first reason why they're not equal. Use \code{\link{isTRUE}} if
  using the result in an \code{if} expression.
}
\description{
Provide a useful implementation of all.equal for data.frames.
}
\examples{
scramble <- function(x) x[sample(nrow(x)), sample(ncol(x))]

# By default, ordering of rows and columns ignored
mtcars_df <- tbl_df(mtcars)
all.equal(mtcars_df, scramble(mtcars_df))

# But those can be overriden if desired
all.equal(mtcars_df, scramble(mtcars_df), ignore_col_order = FALSE)
all.equal(mtcars_df, scramble(mtcars_df), ignore_row_order = FALSE)
}

