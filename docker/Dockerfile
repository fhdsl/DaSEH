FROM jhudsl/intro_to_r:1.2.1
LABEL maintainer="avamariehoffman@gmail.com"
WORKDIR /rocker-build/

# Install extra packages
RUN Rscript -e "install.packages('emoji', repos='http://cran.us.r-project.org', dependencies=TRUE)"
RUN Rscript -e "install.packages('janitor', repos='http://cran.us.r-project.org')"
