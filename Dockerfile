FROM alpine:3.2
MAINTAINER Chris <c@crccheck.com>

ENV TCPDUMP_VERSION 4.7.4-r0

RUN apk add --update \
      tcpdump==${TCPDUMP_VERSION}

VOLUME ["/data"]

ENTRYPOINT ["/usr/sbin/tcpdump"]
CMD ["-C", "1000", "-W", "100", "-v", "-w", "/data/dump"]
