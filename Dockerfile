FROM alpine

# Install some tools in the container.
# Packages are listed in alphabetical order, for ease of readability and ease of maintenance.
RUN     apk update \
    &&  apk add apache2-utils bash bind-tools busybox-extras curl ethtool git \
                iperf3 iproute2 iputils jq lftp mtr mysql-client \
                netcat-openbsd net-tools nginx nmap openssh-client openssl \
	        perl-net-telnet postgresql-client procps rsync socat tcpdump tshark wget

CMD ["tail", "-f", "/dev/null"]
