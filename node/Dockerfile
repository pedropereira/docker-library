ARG NODE_VERSION
FROM node:${NODE_VERSION}-alpine

# Install system dependencies
RUN apk update && \
    apk add --no-cache g++ git make openssh postgresql-client postgresql-dev python tzdata vim
