FROM centos:7
RUN rpm --import https://getfedora.org/static/352C64E5.txt
RUN yum install -y http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
RUN yum update -y && yum install -y \
python-devel \
python-dateutil \
python-decorator \
python-jinja2 \
python-pip \
python-tempita \
python-mock \
gcc \
vim \
git \
links \ 
pyOpenSSL
RUN pip install buildbot
RUN python -mmock
RUN PYTHONPATH=. trial buildbot.test
RUN groupadd -r buildbot && useradd -r -g buildbot buildbot
RUN mkdir /buildbot && chown buildbot:buildbot /buildbot
USER buildbot
WORKDIR /buildbot
ADD master.cfg /buildbot/master.cfg
ADD secrets.py /buildbot/secrets.py
#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/usr/bin/buildbot"]
CMD ["start", "--nodaemon"]

