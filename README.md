# README

## Template for a dockerized rails 7 config

  - Ruby 3.1.2
  - Rails 7.0.4
  - esbuild
  - tailwind
  - postgres

## Instructions for running

  * to use your own name for the app, change all instances of `docker-rails7-esbuild-tailwind-pgsql
` in the app. Update the DB names in database.yml to your apps name. 
  * in `./docker-scripts/rails.sh` uncomment the specified lines when running for the first time.
  * running for the second time, make sure to comment out the lines in the `rails.sh`, otherwise the DB will be recreated.
  * to run the app `docker compose up`
