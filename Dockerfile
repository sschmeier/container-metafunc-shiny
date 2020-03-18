FROM continuumio/miniconda3

ADD VERSION .

RUN conda config --add channels defaults && \
    conda config --add channels conda-forge && \
    conda config --add channels r

RUN conda update -n base -c defaults conda

RUN conda install --yes r-base=3.5.1 r-shiny=1.4.0  r-shinydashboard=0.7.1 r-shinythemes=1.1.2 r-dt=0.12 r-formattable=0.2.0.1 r-tidyverse=1.3.0 r-ggplot2=3.2.1 r-data.table=1.12.8 r-dplyr=0.8.4 r-stringr=1.4.0 r-reshape2=1.4.3 r-rsqlite=2.2.0 r-splitstackshape=1.4.8

RUN conda clean --index-cache --tarballs --packages --yes
