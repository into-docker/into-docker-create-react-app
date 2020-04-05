FROM node:13.12.0
LABEL maintainer="Yannick Scherer <yannick.scherer@gmail.com>"
LABEL into.v1.runner="nginx:1.17.9-alpine"

WORKDIR /into
COPY build assemble ./

# Add ignore information from Github's collection of ignore files
# License: CC0 1.0 Universal
RUN curl -sL "https://raw.githubusercontent.com/github/gitignore/master/LICENSE" >> ignore.LICENSE && \
    curl -sL "https://raw.githubusercontent.com/github/gitignore/master/Node.gitignore" > ignore && \
    echo ".dockerignore" >> ignore
