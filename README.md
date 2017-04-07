# VectorMaximumWorker
Recruitment Homework for C++ Engineers

send us code for a "worker" that can find the largest elements
of various input vectors. The input arrives on one thread, and
the answers will be read on another, and the work needs to be
done in a way that avoids the calculation being done on either
calling thread, but using a maximum number of worker threads.

A basic code stub example has been provided within the code folder.

We have provided a target build enviroment within a docker container
which is based on Ubunu 16.04 it can be started by using **./run.sh** 
The code folder is mapped into the container so it is possible to 
edit the hpp/cpp files using whichever editor you prefer.

alternativly you can use the following to start the container:

`docker run -v ./code:/code -w /code -i -t oxehealth/vector-maximum-worker bash`

The container **./run.sh** script will pull the container from dockerhub,
however if you perfer the container can be rebuilt using **./build.sh**

alternativly use the following to rebuild the container:

`docker build -t vector-maximum-worker .`

sudo access is enabled within the container if you want to install
any other packages.

Within the container in /code there is a **./build.sh** which will kick 
off a cmake build of the C++ files. 
There is also a **./run.sh** which will start the VectorMaximumWorker exe


