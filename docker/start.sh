#!/usr/bin/env bash
set -e
rm -f "/home/${USER_NAME}/${WS}/${APPNAME}/tmp/pids/server.pid"

if [ ! -f "/home/${USER_NAME}/${WS}/${APPNAME}/Gemfile" ]; then
    cd "/home/${USER_NAME}/"
    
    tee "Gemfile" <<EOF
source 'https://rubygems.org'
gem "rails",                      "~> 7.1.3"
EOF

    bundle install
    bundle exec rails new "/home/${USER_NAME}/${WS}/${APPNAME}" --force
fi

cp "/home/${USER_NAME}/${WS}/config/Gemfile" "/home/${USER_NAME}/${WS}/${APPNAME}/Gemfile"

cd "/home/${USER_NAME}/${WS}/${APPNAME}"

bundle install
bundle exec rails db:prepare
exec bundle exec rails server -b 0.0.0.0