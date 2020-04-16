FROM debian:buster-20200414-slim

WORKDIR /root

ADD https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.deb /tmp

RUN mkdir /etc/cloudflared \
	&& apt-get -y update \
	&& dpkg -i /tmp/cloudflared-stable-linux-amd64.deb \
	&& apt-get -fy --no-install-recommends install \
	&& rm -rf /var/lib/apt/lists/*

CMD [ "/usr/local/bin/cloudflared" ]
