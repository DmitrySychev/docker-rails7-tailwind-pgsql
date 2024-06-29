ARG RUBY_VERSION=3.3.3

FROM ruby:$RUBY_VERSION-alpine AS base

ENV RAILS_ENV=development

FROM base
ARG BUNDLER_VERSION=2.5.11

RUN set -eux; \
     apk add --no-cache \
          g++ \
          make \
          git \
          libpq-dev \
          bash \
          libpng \
          imagemagick \
          gcompat \
          tzdata \
          vips-dev \
          docker-cli \
    && rm -rf /var/cache/apk/*

COPY Gemfile Gemfile.lock ./

RUN gem install bundler:$BUNDLER_VERSION \
    && gem update --system \
    && gem install tzinfo-data \
    && gem install nokogiri

RUN echo 'gem: --no-document' >> ~/.gemrc \
    && bundle install

WORKDIR /docker-rails7-tailwind-pgsql

COPY . .
