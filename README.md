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


## [PyTorch](https://github.com/leimao/DockerFiles/blob/master/Dockerfile.pytorch)

### Features

* Ubuntu 16.04
* Latest Python 3 based PyTorch (current Python 3.5 + PyTorch 0.4)
* CUDA 9.1 + cuDNN 7.0 devel
* Partial Anaconda key libraries, such as Numpy, Pandas, etc.
* OpenCV 3.4

### Usage

To build Docker image:

```bash
$ docker build --rm -t leimao/pytorch -f Dockerfile.pytorch .
```

To run container instance on this image using ``nvidia-docker``:

```bash
$ nvidia-docker run -it --name leimao-pytorch-instance -v /home/leimao/workspace:/workspace -p 8888:8888 leimao/pytorch
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


## [Speech Recognition](https://github.com/leimao/DockerFiles/blob/master/Dockerfile.speech)

### Features

* Ubuntu 16.04
* Latest Python 3 based TensorFlow-GPU (current Python 3.5 + TensorFlow-GPU 1.7)
* CUDA 9.0 + cuDNN 7.0 devel
* Partial Anaconda key libraries, such as Numpy, Pandas, etc.
* FFmpeg 4.0
* LibROSA 0.6

### Usage

To build Docker image:

```bash
$ docker build --rm -t leimao/speech -f Dockerfile.speech .
```

To run container instance on this image using ``nvidia-docker``:

```bash
$ nvidia-docker run -it --name leimao-speech-instance -v /home/leimao/workspace:/workspace -p 8888:8888 -p 6006:6006 leimao/speech
```

## [gRPC]

### Features

* Ubuntu 18.04 LTS
* gRPC (latest)
* Protobuf (latest compatible)
* CMake (latest)

### Usage

To build Docker image:

```bash
$ docker build -f grpc.Dockerfile [--build-arg NPROCS=$(nproc)] [--tag=grpc-cmake] .
```
To run the Docker container:

```bash
$ docker run -it --name grpc-instance -v /home/leimao/Workspace:/workspace grpc-cmake
```
