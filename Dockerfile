FROM rocker/r-base:latest

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  libxml2-dev \
  libcairo2-dev \
  libsqlite3-dev \
  libmariadbd-dev \
  libmariadb-client-lgpl-dev \
  libpq-dev \
  libssh2-1-dev \
  libssl-dev  \
  libcurl4-openssl-dev \
  unixodbc-dev

# developer tools
RUN install2.r --error \
  --deps TRUE \
  devtools \
  testthat \
  vdiffr \
  pkgdown \
  covr \
  lintr

# package dependencies
RUN install2.r --error \
  --deps TRUE \
  data.table \
  ggplot2 \
  rstan \
  rstantools \
  rmarkdown
