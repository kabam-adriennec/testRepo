FROM ubuntu:latest
RUN apt-get update && apt-get -y install cron

# Copy hello-cron file to the cron.d directory
COPY hello-cron /etc/cron.d/hello-cron
 
# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/hello-cron

# Apply cron job
RUN crontab /etc/cron.d/hello-cron
 
# Create the log file to be able to run tail
RUN touch /var/log/cron.log
 
# Run the command on container startup
CMD cron && tail -f /var/log/cron.log

#FROM node:12-alpine
#RUN mkdir -p /testRepo
#COPY . /testRepo
#WORKDIR /testRepo
#CMD touch helloworld.txt
#CMD echo >> "helloworld" >> helloworld.txt
#RUN echo "helloworld"
##CMD chmod +x helloworld.sh
##CMD ./helloworld.sh
#EXPOSE 3000
##LABEL org.opencontainers.image.source https://github.com/kabam-adriennec/testRepo

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