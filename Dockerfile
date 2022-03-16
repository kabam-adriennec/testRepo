FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
RUN mkdir -p /testRepo
COPY . /testRepo
WORKDIR /testRepo
RUN npm install
RUN yarn install --production
CMD ["node", "/testRepo/app/src/index.js"]
EXPOSE 3000
LABEL org.opencontainers.image.source https://github.com/kabam-adriennec/testRepo