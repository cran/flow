## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(flow)
flow_view(bquote)

## -----------------------------------------------------------------------------
flow_view(bquote, nested_fun = "unquote")

flow_view(bquote, nested_fun = 3)

