FROM ubuntu:latest

RUN apt-get clean && apt-get update && apt-get install -y bind9

RUN mkdir -p /etc/bind/zones

COPY db.192.168.56 /etc/bind/
COPY db.postmees.com /etc/bind/
COPY named.conf.local /etc/bind/
COPY named.conf.options /etc/bind/

EXPOSE 53/udp 53/tcp



CMD ["/usr/sbin/named", "-g"]
