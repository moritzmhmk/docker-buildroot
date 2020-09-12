FROM debian:buster

RUN apt-get update && apt-get install -y -q \
build-essential  \
cpio \
unzip \
rsync \
file \
bc \
wget \
python \
libncurses5-dev \
bzr cvs git mercurial openssh-client subversion

RUN useradd username
USER username
