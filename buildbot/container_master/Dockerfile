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
gcc 
RUN pip install buildbot
RUN python -mmock
RUN PYTHONPATH=. trial buildbot.test
RUN groupadd -r buildbot && useradd -r -g buildbot buildbot
RUN mkdir /buildbot && chown buildbot:buildbot /buildbot
USER buildbot
WORKDIR /buildbot
RUN buildbot create-master -r .
#RUN buildbot upgrade-master .
VOLUME /buildbot
ENTRYPOINT ["/bin/true"]
#ENTRYPOINT ["/usr/bin/buildbot"]
#CMD ["start", "--nodaemon"]

