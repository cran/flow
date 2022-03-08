## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(flow)

## -----------------------------------------------------------------------------
tidyselect::ends_with

## -----------------------------------------------------------------------------
flow_view_vars(tidyselect::ends_with)

## -----------------------------------------------------------------------------
flow_view_vars(tidyselect::ends_with, expand = FALSE)

## -----------------------------------------------------------------------------
flow_view_deps(tidyselect::ends_with)

## -----------------------------------------------------------------------------
flow_view_deps(tidyselect::ends_with, show_imports = "packages")

## -----------------------------------------------------------------------------
flow_view_deps(tidyselect::ends_with, show_imports = "none")

## -----------------------------------------------------------------------------
flow_view_deps(tidyselect::ends_with, promote = "purrr::map")

## -----------------------------------------------------------------------------
flow_view_deps(tidyselect::ends_with, demote = "peek_vars")

## -----------------------------------------------------------------------------
flow_view_deps(tidyselect::ends_with, hide = c("peek_vars", "purrr::map"))

## -----------------------------------------------------------------------------
flow_view_deps(tidyselect::ends_with, trim = "peek_vars")

## -----------------------------------------------------------------------------
flow_view_shiny(esquisse::esquisser, show_imports = "none")

