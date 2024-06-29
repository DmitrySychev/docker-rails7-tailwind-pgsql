#!/usr/bin/env bash

# uncomment lines 3-11 to create your db
# echo "create pg database"
bundle exec rake db:create

# echo "run rails db migradtions"
# bundle exec rake db:migrate

# echo "seed database"
# bundle exec rake db:seed

# echo "Running BUNDLE INSTALL for rails..."
# bundle install

echo "Starting rails app server ..."
rm -f tmp/pids/server.pid && bin/rails server -p 3000 -b 0.0.0.0
