FROM registry.fedoraproject.org/fedora:37 AS builder

COPY ./getFonts.sh /tmp/getFonts.sh
RUN bash /tmp/getFonts.sh

FROM ghcr.io/vibrantleaf/hyprgreen:latest

COPY --from=builder /usr/local/share/fonts/ /usr/local/share/fonts/ 

COPY ./builder.sh /tmp/builder.sh
RUN bash /tmp/builder.sh

RUN rm -rf /tmp/* /var/*
RUN ostree container commit
RUN mkdir -p /var/tmp && chmod -R 1777 /var/tmp
