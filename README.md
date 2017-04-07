# VectorMaximumWorker
[Oxehealth](http://www.oxehealth.com) Recruitment Homework for C++ Engineers

Send us code for a "worker" that can find the largest elements
of various input vectors. The input arrives on one thread, and
the answers will be read on another, and the work needs to be
done in a way that avoids the calculation being done on either
calling thread, but using a maximum number of worker threads.

A basic code stub example has been provided within the code folder. 

We have provided a target build environment within a 
[Docker](https://www.docker.com) container, which is based on Ubuntu 16.04
(Instructions for installing docker can be found on the [Docker Website](https://www.docker.com/community-edition))

### Long Version

First clone this repository

```bash
git clone https://github.com/oxehealth/vector-maximum-worker.git
```

The container can be started by using **./run.sh** 
The code folder is mapped into the container so it is possible to 
edit the hpp/cpp files using whichever editor you prefer.

Alternatively you can use the following to start the container:

```bash
docker run -v ./code:/code -w /code -i -t oxehealth/vector-maximum-worker bash
```

The container **./run.sh** script will pull the container from 
[Docker Hub](https://hub.docker.com/).
However if you prefer, the container can be rebuilt using **./build.sh**

Alternatively use the following to rebuild the container:

```bash
docker build -t vector-maximum-worker .
```

*sudo* access is enabled within the container if you want to install
any other packages.

Within the container in /code there is a **./build.sh** which will kick 
off a CMake build of the C++ files. 
There is also a **./run.sh** which will start the VectorMaximumWorker exe

### Short Version

```bash
git clone https://github.com/oxehealth/vector-maximum-worker.git
cd vector-maximum-worker
./run.sh
```
