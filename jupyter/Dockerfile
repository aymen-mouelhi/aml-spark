# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/pyspark-notebook

RUN cd /tmp && git clone https://github.com/DistributedSystemsGroup/Algorithmic-Machine-Learning
RUN cd /tmp/Algorithmic-Machine-Learning/ && mv  -v Notebooks/* /home/jovyan/work
