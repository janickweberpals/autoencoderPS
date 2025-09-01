# Pre-built Dev Container Image for R. More info: https://github.com/rocker-org/devcontainer-images/pkgs/container/devcontainer%2Ftidyverse
# use rocker/cuda if NVIDIA drivers are needed, otherwise rocker/ml is a good choice
ARG BASE=rocker/ml
FROM $BASE 

# Copy RStudio preferences and helper script
COPY rstudio-prefs.json /rstudio-prefs.json
COPY copy-rstudio-prefs.sh /usr/local/bin/copy-rstudio-prefs.sh
RUN chmod +x /usr/local/bin/copy-rstudio-prefs.sh


