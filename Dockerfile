FROM node:12-slim

ENV ENABLE_GATSBY_REFRESH_ENDPOINT='true', CONTENTFUL_HOST='preview.contentful.com'

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn install

COPY . ./

ENTRYPOINT ["sh", "-c", "yarn develop --port ${PORT} -H 0.0.0.0"]
