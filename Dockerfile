FROM ruby:3.1.3-alpine3.17

RUN apk update && apk add make gcc postgresql-dev musl-dev bash g++ jq nodejs git openssl
RUN gem install bundler:2.4.3 rubygems-bundler
RUN gem regenerate_binstubs

COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs $(nproc)

WORKDIR /app
COPY . /app
