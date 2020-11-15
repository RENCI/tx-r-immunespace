FROM rocker/rstudio

User root

RUN apt-get update && apt-get install -y zlib1g-dev curl libssl-dev libcurl4-openssl-dev libxml2-dev

RUN R -e "install.packages('BiocManager', version='3.12', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('optparse', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('Rlabkey', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('readr', repos='http://cran.rstudio.com/')"

RUN R -e "BiocManager::install('ImmuneSpaceR')"

CMD ["/bin/bash"]
