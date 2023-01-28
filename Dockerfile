# syntax=docker/dockerfile:1

# The base image we are going to use
FROM node:12.18.1

# Set node env to production to improve its performance
ENV NODE_ENV=production

# It defines the working directory
# We are going to use this path as the default location for all subsequent commands
WORKDIR /app

# Copy package.json and package-lock.json files to working dir (/app)
# Note that we are only copying these files rather than entire directory.
# This allow us to take advantage of cached Docker layers
COPY ["package.json", "package-lock.json", "./"]

# Install the node dependencies
RUN npm install --production

# We're adding our source code into the image
# The command takes all the files in the current directory and copies them into image.
# !It ignores files and directories which are defined in .dockerignore file.
COPY  . .

# Run the application
CMD ["npm", "start"]