# Pre-built Dev Container Image for R. More info: https://github.com/rocker-org/devcontainer-images/pkgs/container/devcontainer%2Ftidyverse
FROM ghcr.io/rocker-org/devcontainer/ml:latest

# Install system dependencies for common R packages
RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
    git \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libnode-dev \
    build-essential \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy RStudio preferences and helper script
COPY rstudio-prefs.json /rstudio-prefs.json
COPY copy-rstudio-prefs.sh /copy-rstudio-prefs.sh
RUN chmod +x /copy-rstudio-prefs.sh

