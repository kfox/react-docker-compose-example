ARG NODEJS_VERSION

FROM node:${NODEJS_VERSION}-alpine

WORKDIR /app
COPY ./package* /app/
RUN yarn

CMD ["npm", "start"]
