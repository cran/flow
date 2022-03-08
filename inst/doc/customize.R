## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(flow)

factorial <- function(x) {
  ## is the input valid ?
  if(!is.integer(x) && length(x) == 1) {
    ## fail explicitly
    stop("`x` must be integer!")
  }
  ## initialize result
  res <- 1
  for(i in 2:x) {
    ## update result
    res <- res * i
    ## is the result to big ?
    if(res > 1000) {
      ## fail explicitly
      stop("too big!!!") 
    }
  }
  res
}

flow_view(factorial, prefix = "##")

## -----------------------------------------------------------------------------
flow_view(factorial, code = FALSE)

flow_view(factorial, prefix = "##", code = FALSE)

flow_view(factorial, prefix = "##", code = NA) # pay attention to the last block

## -----------------------------------------------------------------------------
kg_to_lb <- function(mass) {
  if(mass < 0) {
    stop("mass should not be negative!")
  } else {
      mass <- 2.20462262185 * mass
  }
  mass
}

flow_view(kg_to_lb)

flow_view(kg_to_lb, narrow = TRUE)

## -----------------------------------------------------------------------------
fun <- function() {
  ## short header
  x <- "__________________________long string__________________________"
  ## __________________________long header__________________________
  x
}
flow_view(fun, prefix = "##")
flow_view(fun, truncate = 15, prefix = "##")

## -----------------------------------------------------------------------------
fun <- function(cond) {
  x <- if(cond) this else that
  x
}

flow_view(fun)

flow_view(fun, swap = FALSE)

