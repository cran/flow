## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(flow)

## -----------------------------------------------------------------------------
# display a function's body
flow_view(ave) 

# if non standard evaluation is an issue, use a one element named list
fun <- ave
flow_view(list(ave = fun))

# display script
flow_view("../tests/testthat.R")

# display quoted expression
flow_view(quote(if(1 + 1 == 2) {"ok"} else {"oh no"}))

## ---- eval = FALSE------------------------------------------------------------
#  # display a function's body
#  flow_view(ave, engine = "plantuml")

## -----------------------------------------------------------------------------
factorial <- function(x) {
  if(!is.integer(x)) stop("`x` must be integer!")
  res <- 1
  for(i in 2:x) {
    res <- res * i
    if(res > 1000) stop("too big!!!") 
  }
  res
}

## -----------------------------------------------------------------------------
flow_run(factorial(5L))

## ---- error = TRUE------------------------------------------------------------
flow_run(factorial(10L))

## ---- eval=TRUE---------------------------------------------------------------
vec <- c(1:3, NA)
flow_run(median(vec, na.rm = TRUE))

