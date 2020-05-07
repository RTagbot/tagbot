FROM rocker/r-ver

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  git

COPY . /tagbot

RUN Rscript -e "install.packages('remotes')"
RUN Rscript -e "remotes::install_local('/tagbot/')"