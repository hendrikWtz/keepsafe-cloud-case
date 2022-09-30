FROM node:16.6.2-slim
USER node
ENV PORT 8080
EXPOSE 8080
WORKDIR /usr/src/app
COPY . . 
CMD ["npm","run", "deploy"]

# Add a new comment to trigger build.
# basic nginx dockerfile starting with Ubuntu 20.04
FROM ubuntu:20.04
RUN apt-get -y update
RUN apt-get -y install nginx