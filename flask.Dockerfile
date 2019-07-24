FROM ubuntu:18.04

LABEL maintainer="Lei Mao <dukeleimao@gmail.com>"

RUN pip install Flask requests

# Upgrade Ubuntu components
RUN apt-get update &&\
    apt-get upgrade -y

RUN pip install Flask requests

# Working directory
WORKDIR /workspace