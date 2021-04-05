FROM rocker/verse:4.0.0-ubuntu18.04
## create directories
RUN mkdir -p /01_data
RUN mkdir -p /02_code
RUN mkdir -p /03_output
## copy files
COPY /02_code/install_packages.R /02_code/install_packages.R
RUN apt-get update --yes && \
  apt-get upgrade --yes

RUN apt-get install -y build-essential python3.6 python3-pip python3-dev
RUN pip3 -q install pip --upgrade
RUN pip3 install jupyter

## install R-packages
RUN Rscript /02_code/install_packages.R
