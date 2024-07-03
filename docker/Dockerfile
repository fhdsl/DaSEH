FROM jhudsl/intro_to_r:1.1.1
LABEL maintainer="avamariehoffman@gmail.com"
WORKDIR /rocker-build/

# DaSEH package
RUN Rscript -e "options(warn = 2); remotes::install_github('fhdsl/dasehr')"

