ARG NODE_VERSION
FROM --platform=linux/arm64 node:${NODE_VERSION}-alpine

# Install system dependencies
RUN apk update && \
    apk add --no-cache g++ git make openssh postgresql-client postgresql-dev python3 tzdata vim
