TCPDump
=======

A minimal Docker container with [TCPDump], a packet analyzer (tcpdump) and
network traffic capturer (libpcap).

Supported tags
--------------

* `4.7.4`, `latest`

Usage
-----

There's a data volume available at `/data/` if you need one.

### View help and version

    $ docker run --rm crccheck/tcpdump --help

### Examine the host network

    $ docker run --rm --net=host crccheck/tcpdump

### Examine the TCP traffic on the host network with Wireshark

    $ docker run --rm --net=host crccheck/tcpdump -i any -w - | wireshark -k -i -

### Examine the traffic of Docker container `foo` with Wireshark

    $ docker run --rm --net=container:foo crccheck/tcpdump -i any --immediate-mode -w - | wireshark -k -i -

Prior Art
---------

Heavily influnced by [corfr/tcpdump], which did a great job of documenting how
to use TCPDump with Docker.

  [TCPDump]: http://www.tcpdump.org/
  [corfr/tcpdump]: https://registry.hub.docker.com/u/corfr/tcpdump/
