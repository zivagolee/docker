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
  openssh \
  perl-TermReadKey \
  python26 \
  rsync \
  unzip \
  zlib \
  zlib-devel
