FROM rocker/shiny
RUN R -e "install.packages(c('shinydashboard'), repos='https://cran.rstudio.com/')"
COPY /LVV/ /srv/shiny-server/
