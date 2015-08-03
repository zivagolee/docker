FROM centos:5
MAINTAINER Zivago Lee

RUN yum install -y epel-release

RUN yum install -y automake \
  curl \
  cmake \
  cpp \
  gettext \
  git \
  glibc \
  glibc-devel \
  glibc-headers \
  gcc-c++ \
  libaio-devel \
  libgcc \
  libstdc++ \
  libtool \
  make \
  ncurses-devel \
  openssh \
  perl-TermReadKey \
  python26 \
  rsync \
  unzip \
  wget \
  zlib \
  zlib-devel

RUN wget --no-check-certificate -P /tmp http://flydata-rpm.s3-website-us-east-1.amazonaws.com/chrpath-0.16.tar.gz
RUN tar xzvf /tmp/chrpath-0.16.tar.gz -C /tmp
RUN cd /tmp/chrpath-0.16 && ./configure && make && make install

RUN wget --no-check-certificate -P /tmp http://flydata-rpm.s3-website-us-east-1.amazonaws.com/patchelf-0.8.tar.gz
RUN tar xzvf /tmp/patchelf-0.8.tar.gz -C /tmp
RUN cd /tmp/patchelf-0.8 && ./configure && make && make install

RUN wget --no-check-certificate -P /tmp/ https://bootstrap.pypa.io/get-pip.py
RUN python26 /tmp/get-pip.py
RUN pip --no-cache-dir install awscli
