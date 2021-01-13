FROM ruby:2.7.2-alpine

RUN apk add --update --no-cache bash

WORKDIR /ruby_diamond

COPY Gemfile .

RUN bundle install

COPY . .
