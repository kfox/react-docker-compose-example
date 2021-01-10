ARG NODEJS_VERSION

FROM node:${NODEJS_VERSION}-alpine

WORKDIR /app
COPY ./package* ./yarn.lock ./.yarnrc.yml /app/
RUN yarn --ignore-optional

CMD ["yarn", "start"]
