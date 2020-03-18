Bootstrap: docker
From: continuumio/miniconda3

%labels
   AUTHOR s.schmeier@pm.me

%environment
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# This sets global environment variables for anything run within the container
  export PATH="/opt/conda/bin:/usr/local/bin:/usr/bin:/bin:"
  unset CONDA_DEFAULT_ENV
  export ANACONDA_HOME=/opt/conda

%post
   export PATH=/opt/conda/bin:$PATH
   echo "We add conda channels."
   conda config --add channels defaults
   conda config --add channels conda-forge
   conda config --add channels r
   echo "We install tools."
   conda install --yes r-base=3.5.1 r-shiny=1.4.0  r-shinydashboard=0.7.1 r-shinythemes=1.1.2 r-dt=0.12 r-formattable=0.2.0.1 r-tidyverse=1.3.0 r-ggplot2=3.2.1 r-data.table=1.12.8 r-dplyr=0.8.4 r-stringr=1.4.0 r-reshape2=1.4.3 r-rsqlite=2.2.0 r-splitstackshape=1.4.8
   conda clean --index-cache --tarballs --packages --yes
