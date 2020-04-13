FROM node:13:12:0

ARG COMMIT
ARG BUILD_DATE

LABEL maintainer="Yannick Scherer <yannick.scherer@gmail.com>"
LABEL org.opencontainers.image.authors="Yannick Scherer <yannick.scherer@gmail.com>"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.source="https://github.com/into-docker/into-docker-create-react-app"
LABEL org.opencontainers.image.url="https://github.com/into-docker/into-docker-create-react-app"
LABEL org.opencontainers.image.revision="${COMMIT}"
LABEL org.opencontainers.image.created="${BUILD_DATE}"

LABEL org.into-docker.runner-image="nginx:1.17.9-alpine"

WORKDIR /into

# Add ignore information from Github's collection of ignore files
# License: CC0 1.0 Universal
RUN curl -sL "https://raw.githubusercontent.com/github/gitignore/master/LICENSE" > ignore.LICENSE && \
    curl -sL "https://raw.githubusercontent.com/github/gitignore/master/Node.gitignore" > ignore

COPY into/ .
