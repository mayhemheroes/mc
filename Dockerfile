FROM --platform=linux/amd64 ubuntu:20.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y make gcc bison flex

ADD . /mc
WORKDIR /mc
RUN ./configure
RUN make bootstrap
RUN make
RUN make install
