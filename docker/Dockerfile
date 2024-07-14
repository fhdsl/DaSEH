FROM jhudsl/intro_to_r:1.2.0
LABEL maintainer="avamariehoffman@gmail.com"
WORKDIR /rocker-build/

# DaSEH package
RUN Rscript -e "options(warn = 2); remotes::install_github('fhdsl/dasehr')"

