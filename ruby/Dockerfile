ARG RUBY_VERSION
FROM --platform=linux/arm64 ruby:${RUBY_VERSION}-alpine

# Install system dependencies
RUN apk update && \
    apk add --no-cache build-base git openssh postgresql-dev tzdata vim
