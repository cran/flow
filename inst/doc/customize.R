## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = FALSE------------------------------------------------------------
#  library(flow)
#  
#  factorial <- function(x) {
#    ## is the input valid ?
#    if(!is.integer(x) && length(x) == 1) {
#      ## fail explicitly
#      stop("`x` must be integer!")
#    }
#    ## initialize result
#    res <- 1
#    for(i in 2:x) {
#      ## update result
#      res <- res * i
#      ## is the result to big ?
#      if(res > 1000) {
#        ## fail explicitly
#        stop("too big!!!")
#      }
#    }
#    res
#  }
#  
#  flow_view(factorial, prefix = "##")

## ---- eval = FALSE------------------------------------------------------------
#  flow_view(factorial, code = FALSE)

## ---- eval = FALSE------------------------------------------------------------
#  flow_view(factorial, prefix = "##", code = FALSE)

## ---- eval = FALSE------------------------------------------------------------
#  flow_view(factorial, prefix = "##", code = NA) # pay attention to the last block

## ---- eval = FALSE------------------------------------------------------------
#  kg_to_lb <- function(mass) {
#    if(mass < 0) {
#      stop("mass should not be negative!")
#    } else {
#        mass <- 2.20462262185 * mass
#    }
#    mass
#  }
#  
#  flow_view(kg_to_lb)

## ---- eval = FALSE------------------------------------------------------------
#  flow_view(kg_to_lb, narrow = TRUE)

## ---- eval = FALSE------------------------------------------------------------
#  fun <- function() {
#    ## short header
#    x <- "__________________________long string__________________________"
#    ## __________________________long header__________________________
#    x
#  }
#  flow_view(fun, prefix = "##")

## ---- eval = FALSE------------------------------------------------------------
#  flow_view(fun, truncate = 15, prefix = "##")

## ---- eval = FALSE------------------------------------------------------------
#  fun <- function(cond) {
#    x <- if(cond) this else that
#    x
#  }
#  
#  flow_view(fun)

## ---- eval = FALSE------------------------------------------------------------
#  flow_view(fun, swap = FALSE)

