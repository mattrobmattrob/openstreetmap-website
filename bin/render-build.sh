#!/usr/bin/env bash
# exit on error
set -o errexit

# # Get the Render build environment ready
# mount -o remount,rw /
# apt install sudo

# Install correct dependencies
# sudo apt-get update
# sudo apt-get install ruby2.7 libruby2.7 ruby2.7-dev \
#                      libvips-dev libxml2-dev libxslt1-dev nodejs \
#                      apache2 apache2-dev build-essential git-core firefox-geckodriver \
#                      postgresql postgresql-contrib libpq-dev libsasl2-dev \
#                      libffi-dev libgd-dev libarchive-dev libbz2-dev yarnpkg
# sudo gem2.7 install bundler

# Get Rails ready to go
bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate
