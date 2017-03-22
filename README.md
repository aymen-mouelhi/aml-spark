# spark

A `debian:jessie` based [Spark](http://spark.apache.org) notebook container.

## Usage

To build the docker image a simplistic standalone cluster with [docker-compose](http://docs.docker.com/compose):
    ```
    docker build -t aml-spark .
    ```

To run the image:
    ```
    docker run -p 8888:8888 aml-spark
    ```
Jupyter pySpark Notebook will be running at `http://${YOUR_DOCKER_HOST}:8888`.

The image will download the notebooks from [github](https://github.com/DistributedSystemsGroup/Algorithmic-Machine-Learning) and then download the sample data needed for the Lab 3/4.

Note that in the command line output you will have a url: `http://${YOUR_DOCKER_HOST}:8888/token?{token}`.
You have to copy this url for the first run.
