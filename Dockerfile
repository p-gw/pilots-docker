FROM rocker/tidyverse:latest

# developer tools
RUN install2.r --error \
  --deps TRUE \
  testthat \
  vdiffr \
  pkgdown \
  covr \
  lintr

# package dependencies
RUN install2.r --error \
  --deps TRUE \
  data.table \
  rstan \
  rstantools \
  rmarkdown
