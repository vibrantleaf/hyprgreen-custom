FROM ghcr.io/vibrantleaf/hyprgreen:latest

COPY ./builder.sh /tmp/builder.sh
RUN bash /tmp/builder.sh

RUN rm -rf /tmp/* /var/*
RUN ostree container commit
RUN mkdir -p /var/tmp && chmod -R 1777 /var/tmp
