#ARG BASE_CONTAINER = ucsdets/datascience-notebook:2021.2-stable
ARG BASE_CONTAINER = ucsdets/datahub-base-notebook:2021.2-stable

FROM $BASE_CONTAINER

LABEL maintainer = "UC San Diego ITS/ETS <ets-consult@ucsd.edu>"

USER root

RUN apt-get -y install aria2 nmap traceroute

USER jovyan

RUN pip install --no-cache-dir geopandas babypandas


