FROM node:12-alpine
CMD chmod +x helloworld.txt
CMD ./helloworld.sh
EXPOSE 3000
LABEL org.opencontainers.image.source https://github.com/kabam-adriennec/testRepo

#FROM node:12-alpine
#RUN apk add --no-cache python2 g++ make
#RUN mkdir -p /testRepo
#COPY . /testRepo
#WORKDIR /testRepo
#RUN yarn install --production
#COPY /testRepo/app/package.json ./
#RUN npm install -g express
#COPY . .
#CMD ["node", "/testRepo/app/src/index.js"]
#EXPOSE 3000
#LABEL org.opencontainers.image.source https://github.com/kabam-adriennec/testRepo