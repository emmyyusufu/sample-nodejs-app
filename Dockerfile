FROM node:6-alpine

MAINTAINER bharath.kumar@prudential.com

# The RUN statement will allow us to execute a command for anything you want to do,
# Create subdirectory /usr/src/app that will hold our application code within the docker image.
RUN mkdir -p /usr/src/app

# WORKDIR instruction establishes the subdirectory we created as the working directory for any RUN, CMD, ENTRYPOINT,
# COPY and ADD instructions that follow it in the Dockerfile. /usr/src/app is our working directory.
WORKDIR /usr/src/app

# COPY lets us copy files from a source to a destination and the contents of our node application code ( server.js and package.json)
# from our current directory to the working directory in our docker image.
COPY . .

RUN npm install

# The EXPOSE instruction informs Docker that the container listens on the specified network ports at runtime.
# We specified port 6000.
EXPOSE 6000

# CMD statement specifies the command to start our application.This tells Docker how to run our application.
# Here we use node server.js which is typically how files are run in Node.js.
CMD [ "node", "server.js" ]
