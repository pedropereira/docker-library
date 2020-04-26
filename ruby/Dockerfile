ARG RUBY_VERSION
FROM ruby:${RUBY_VERSION}-alpine

# Install system dependencies
RUN apk update && \
    apk add --no-cache build-base git openssh postgresql-dev tzdata vim
