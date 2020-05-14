FROM node:13.12.0

ARG USER="builder"

LABEL maintainer="Yannick Scherer <yannick.scherer@gmail.com>"
LABEL org.opencontainers.image.authors="Yannick Scherer <yannick.scherer@gmail.com>"
LABEL org.opencontainers.image.licenses="MIT"

LABEL org.into-docker.builder-user="${USER}"
LABEL org.into-docker.runner-image="nginx:1.17.9-alpine"

WORKDIR /into
ENV HOME="/into/home"
RUN useradd -d "${HOME}" -m "${USER}"
COPY into/ .
