FROM partlab/ubuntu-golang

MAINTAINER Niraj Pant <nirajpant@acm.org>

# Official instructions from
# https://github.com/BitGo/prova/blob/master/docs/install-guide.md

## Get Glide
RUN sudo add-apt-repository ppa:masterminds/glide && sudo apt-get update
RUN sudo apt-get install glide

## Include binary build path
RUN export PATH=$PATH:$GOPATH/bin

## Install Prova
RUN go get -u github.com/Masterminds/glide
RUN git clone https://github.com/bitgo/prova $GOPATH/src/github.com/bitgo/prova
WORKDIR $GOPATH/src/github.com/bitgo/prova
RUN glide install
RUN go install
RUN go env GOROOT GOPATH
