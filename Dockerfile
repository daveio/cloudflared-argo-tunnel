FROM gcr.io/distroless/base@sha256:2b0a8e9a13dcc168b126778d9e947a7081b4d2ee1ee122830d835f176d0e2a70

ADD https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.tgz /

RUN [ "mkdir", "/conf" ]

CMD ["/cloudflared"]
