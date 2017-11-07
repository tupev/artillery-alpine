FROM node:9-alpine

MAINTAINER <https://github.com/tupev/artillery-alpine>

ENV ARTILLERY_VERSION 1.6.0-10

WORKDIR /artillery

RUN npm install -g artillery@${ARTILLERY_VERSION}

# docker run -v [path-to-tests]:/artillery artillery run [test_name].yml

ENTRYPOINT ["artillery"]