FROM ubuntu:xenial
RUN apt-get update
RUN apt-get install -y --no-install-recommends unbound=1.5.8-1ubuntu1
ADD unbound.conf.sample /etc/unbound/unbound.conf
EXPOSE 53 53/udp
ENTRYPOINT ["/usr/sbin/unbound", "-d", "-v"]
