## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(flow)

flow_debug(factorial)
factorial5 <- function(){
  x <- 5L
  factorial(x)
}
factorial5()

