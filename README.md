# DockerFiles

Lei Mao

University of Chicago

## Introduction

This is a collection of the Dockerfiles I used for different purposes.


## [TensorFlow](https://github.com/leimao/DockerFiles/blob/master/Dockerfile.tensorflow)

### Features

* Ubuntu 16.04
* Latest Python 3 based TensorFlow-GPU (current Python 3.5 + TensorFlow-GPU 1.7)
* CUDA 9.0 + cuDNN 7.0 devel
* Partial Anaconda key libraries, such as Numpy, Pandas, etc.
* OpenCV 3.4

### Usage

To build Docker image:

```bash
$ docker build --rm -t leimao/tensorflow -f Dockerfile.tensorflow .
```

To run container instance on this image using ``nvidia-docker``:

```bash
$ nvidia-docker run -it --name leimao-tensorflow-instance -v /home/leimao/workspace:/workspace -p 8888:8888 -p 6006:6006 leimao/tensorflow
```


## [Octave](https://github.com/leimao/DockerFiles/blob/master/Dockerfile.octave)

### Features

* Ubuntu 16.04
* Latest Octave with Image package (current Octave 4.2 + Image 2.6.2) via PPA
* Python 3.5 
* OpenCV 3.4

### Usage

To build Docker image:

```bash
$ docker build --rm -t leimao/octave -f Dockerfile.octave .
```

To run container instance on this image using ``docker``:

```bash
$ docker run -it --name leimao-octave-instance -v /home/leimao/workspace:/workspace leimao/octave
```

