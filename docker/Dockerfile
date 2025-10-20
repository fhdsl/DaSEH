FROM jhudsl/intro_to_r:1.2.1
LABEL maintainer="avamariehoffman@gmail.com"
WORKDIR /rocker-build/

# DaSEH package
RUN Rscript -e "options(warn = 2); install.packages('emoji', repos='http://cran.us.r-project.org', dependencies=TRUE); install.packages("janitor", repos='http://cran.us.r-project.org')"

