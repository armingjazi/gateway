# base image
FROM node:11.10

# set working directory
RUN mkdir /app
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json /app/
COPY package.json yarn.lock /app/
COPY index.js /app/
RUN yarn install --pure-lockfile

ARG port=3001
ENV PORT=$port
EXPOSE $PORT

RUN yarn build

CMD ["node", "dist/index.js"]