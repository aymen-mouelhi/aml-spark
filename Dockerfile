# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/pyspark-notebook

USER root

# Download lastfm data
RUN apt-get update
RUN apt-get -f install
RUN apt-get install -y wget
RUN mkdir -p /datasets/lastfm

RUN wget http://www.iro.umontreal.ca/~lisa/datasets/profiledata_06-May-2005.tar.gz && tar xvzf profiledata_06-May-2005.tar.gz && rm profiledata_06-May-2005.tar.gz
RUN mv profiledata_06-May-2005/* /datasets/lastfm
RUN rm -r profiledata_06-May-2005
RUN rm /datasets/lastfm/README.txt

# Download flights data
RUN mkdir -p /datasets/airline
RUN wget http://stat-computing.org/dataexpo/2009/1994.csv.bz2 && tar xvzf 1994.csv.bz2 && rm 1994.csv.bz2
RUN mv 1994.csv /datasets/airline
RUN rm -r 1994.csv.bz2


# Download Notebooks
RUN cd /tmp && git clone https://github.com/DistributedSystemsGroup/Algorithmic-Machine-Learning
RUN cd /tmp/Algorithmic-Machine-Learning/ && mv  -v Notebooks/* /home/jovyan/work
