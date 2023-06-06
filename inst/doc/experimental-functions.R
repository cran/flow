## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(flow)

## -----------------------------------------------------------------------------
tidyselect::ends_with

## ---- eval = FALSE------------------------------------------------------------
#  flow_view_vars(tidyselect::ends_with)

## ---- eval = FALSE------------------------------------------------------------
#  flow_view_vars(tidyselect::ends_with, expand = FALSE)

## ---- eval = FALSE------------------------------------------------------------
#  flow_view_deps(tidyselect::ends_with)

## ---- eval = FALSE------------------------------------------------------------
#  flow_view_deps(tidyselect::ends_with, show_imports = "packages")

## ---- eval = FALSE------------------------------------------------------------
#  flow_view_deps(tidyselect::ends_with, show_imports = "none")

## ---- eval = FALSE------------------------------------------------------------
#  flow_view_deps(tidyselect::ends_with, promote = "purrr::map")

## ---- eval = FALSE------------------------------------------------------------
#  flow_view_deps(tidyselect::ends_with, demote = "peek_vars")

## ---- eval = FALSE------------------------------------------------------------
#  flow_view_deps(tidyselect::ends_with, hide = c("peek_vars", "purrr::map"))

## ---- eval = FALSE------------------------------------------------------------
#  flow_view_deps(tidyselect::ends_with, trim = "peek_vars")

## ---- eval = FALSE------------------------------------------------------------
#  flow_view_shiny(esquisse::esquisser, show_imports = "none")

## ---- eval = FALSE------------------------------------------------------------
#  flow_view_uses(purrr:::accum_index)

## ---- eval = FALSE------------------------------------------------------------
#  flow_compare_runs(rle(NULL), rle(c(1, 2, 2, 3)))

## -----------------------------------------------------------------------------
#' Add or subtract
#' 
#' This is a useless function that adds or subtract numbers
#' 
#' See its logic in this flow diagram:
#' 
#' `r flow_embed(flow_view(add_or_subtract), "add_or_subtract")`
#' 
#' @param x string
#' @param y string
#' @param what "add" or "subtract"
add_or_subtract <- function(x, y, what = c("add", "subtract")) {
  what <- match.arg(what)
  if (what == "add") {
    x + y
  } else {
    x - y
  }
}

