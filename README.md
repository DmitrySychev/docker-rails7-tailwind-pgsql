# README

## Template for a dockerized rails 7 config

  - Ruby 3.3.3
  - Rails 7.1.3.4
  - tailwind
  - postgres

## Instructions for running

  * To use your own name for the app, change all instances of `docker-rails7-esbuild-tailwind-pgsql
` in the app. Update the DB names in database.yml to your apps name.
  * In `./docker-scripts/rails.sh` uncomment the DB creation lines when running for the first time.
  * To run the app `docker compose up`
