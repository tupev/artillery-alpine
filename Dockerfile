FROM node:9-alpine

MAINTAINER <https://github.com/tupev/artillery-alpine>

ENV ARTILLERY_VERSION 1.6.0-12

WORKDIR /artillery

RUN apk --update --no-cache add ca-certificates \
&& npm install -g artillery@${ARTILLERY_VERSION} \
&& rm -rf /var/cache/apk/* 

# docker run -v [path-to-tests]:/artillery artillery run [test_name].yml

ENTRYPOINT ["artillery"]