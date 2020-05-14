FROM node:13.12.0

ARG COMMIT
ARG BUILD_DATE
ARG USER="builder"

LABEL maintainer="Yannick Scherer <yannick.scherer@gmail.com>"
LABEL org.opencontainers.image.authors="Yannick Scherer <yannick.scherer@gmail.com>"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.source="https://github.com/into-docker/into-docker-create-react-app"
LABEL org.opencontainers.image.url="https://github.com/into-docker/into-docker-create-react-app"
LABEL org.opencontainers.image.revision="${COMMIT}"
LABEL org.opencontainers.image.created="${BUILD_DATE}"

LABEL org.into-docker.builder-user="${USER}"
LABEL org.into-docker.runner-image="nginx:1.17.9-alpine"

WORKDIR /into
ENV HOME="/into/home"
RUN useradd -d "${HOME}" -m "${USER}"
COPY into/ .
