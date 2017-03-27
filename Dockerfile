FROM ruby:2.4.1-alpine

ENV PACKAGES="nodejs build-base postgresql-dev tzdata"

RUN apk --no-cache --update --upgrade add $PACKAGES && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /app/
RUN gem install bundler

