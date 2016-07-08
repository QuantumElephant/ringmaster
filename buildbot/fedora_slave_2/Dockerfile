FROM fedora:23
RUN yum update -y && yum install -y \
buildbot-slave \
python-devel \
gcc \
gcc-c++ \
gcc-gfortran \
numpy \
h5py \
scipy \
Cython \
python-sphinx \
python-nose \
sympy \
patch \
python-matplotlib \
atlas-devel \
libxc-devel \
libint2-devel \
tar \
git \
bzip2 \
make \
wget
RUN groupadd -r buildbot && useradd -r -g buildbot buildbot
RUN mkdir /buildslave && chown buildbot:buildbot /buildslave
# needed to allow matplotlib to store cache.
RUN mkdir /home/buildbot && chown buildbot:buildbot /home/buildbot
USER buildbot
WORKDIR /buildslave
RUN buildslave create-slave . clifford.chemistry.mcmaster.ca:9989 bot-fedora-x64-deps-2 Ujqu1LqPAJktsT7MJDZpfYC6M1Mn
ENTRYPOINT ["/usr/bin/buildslave"]
CMD ["start", "--nodaemon"]

