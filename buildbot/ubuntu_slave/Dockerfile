FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y apt-utils
RUN apt-get upgrade -y && apt-get install -y \
buildbot-slave \
git \
make \ 
bzip2 \
tar \
curl \
vim \ 
python-dev \
gcc \
g++ \
gfortran \
python-numpy \
python-h5py \
python-scipy \
cython \
python-sphinx \
python-nose \
python-sympy \
patch \
python-matplotlib \
libopenblas-dev

RUN mkdir /buildslave && chown buildbot:buildbot /buildslave
RUN mkdir /home/buildbot && chown buildbot:buildbot /home/buildbot
USER buildbot
WORKDIR /buildslave
RUN buildslave create-slave . bbm:9989 bot-ubuntu bot-ubuntu_key
ENTRYPOINT ["/usr/bin/buildslave"]
CMD ["start", "--nodaemon"]

