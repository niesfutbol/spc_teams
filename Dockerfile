FROM islasgeci/base:22.04
RUN Rscript -e "install.packages(c('comprehenr', 'RcppRoll'), repos='http://cran.rstudio.com')"
COPY . /workdir
