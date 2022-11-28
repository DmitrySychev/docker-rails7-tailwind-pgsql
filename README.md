# README

## Template for a dockerized rails 7 config

  - Ruby 3.1.2
  - Rails 7.0.4
  - esbuild
  - tailwind
  - postgres

## Instructions for running

  * To use your own name for the app, change all instances of `docker-rails7-esbuild-tailwind-pgsql
` in the app. Update the DB names in database.yml to your apps name.
  * In `./docker-scripts/rails.sh` uncomment the specified lines when running for the first time.
  * Running for the second time, make sure to comment out the lines in the `rails.sh`, otherwise the DB will be recreated.
  * To run the app `docker compose start`

## Notes for debugging

  * In order to be able to debug with pry or break, js/css watching and rails server have to be decoupled into seperate containers.
  * The config is already in `docker-compose.yml`. Lines 13, 20-30 will need to be uncommented.
  * After that, containers will need to be rebuilt with `docker compose build` and started again with `docker compose start`
  * In order to access the debugger, run `docker attach rails` and place a `binding.break` in the desired method for debbugging. The attached terminal will allow you to access the debugger.
