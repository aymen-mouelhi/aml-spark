# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/pyspark-notebook

USER root

# Download data
RUN apt-get update
RUN apt-get -f install
RUN apt-get install -y wget
RUN cd .. && mkdir -p /datasets/lastfm

RUN wget http://www.iro.umontreal.ca/~lisa/datasets/profiledata_06-May-2005.tar.gz && tar xvzf profiledata_06-May-2005.tar.gz && rm profiledata_06-May-2005.tar.gz
RUN mv profiledata_06-May-2005/* /datasets/lastfm
RUN rm -r profiledata_06-May-2005
RUN rm /datasets/lastfm/README.txt


# Download Notebooks
RUN cd /tmp && git clone https://github.com/DistributedSystemsGroup/Algorithmic-Machine-Learning
RUN cd /tmp/Algorithmic-Machine-Learning/ && mv  -v Notebooks/* /home/jovyan/work
