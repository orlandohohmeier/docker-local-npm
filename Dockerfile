FROM node:6.0.0

MAINTAINER Orlando Hohmeier <hello@orlandohohmeier.com>

WORKDIR /local-npm
ADD . /local-npm/

RUN npm set progress=false && npm install --no-color && npm dedupe

EXPOSE 5080
EXPOSE 16984

VOLUME /data

ENV DATA_DIRECTORY='/data'
ENV REMOTE_REGISTRY='https://registry.npmjs.org'
ENV REMOTE_REGISTRY_SKIMDB='https://skimdb.npmjs.com/registry'

CMD npm start -- --remote $REMOTE_REGISTRY \
    --remote-skim $REMOTE_REGISTRY_SKIMDB --directory $DATA_DIRECTORY
