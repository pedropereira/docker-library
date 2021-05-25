ARG NODE_VERSION
FROM node:${NODE_VERSION}-alpine

# Install system dependencies
RUN apk update && \
    apk add --no-cache git postgresql-dev tzdata vim
