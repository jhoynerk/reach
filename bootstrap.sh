#!/usr/bin/env bash

aptitude update
# aptitude upgrade -y
aptitude install -y bash curl git patch bzip2 build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev libgdbm-dev ncurses-dev automake libtool bison subversion pkg-config libffi-dev libcurl3-dev imagemagick libmagickwand-dev libpcre3-dev libpq-dev


sudo apt-get install -y postgresql postgresql-contrib libpq-dev

sudo su postgres -c "psql -c \"CREATE ROLE vagrant SUPERUSER LOGIN PASSWORD 'vagrant'\" "

sudo apt-get install -y nodejs

su -c 'bash /vagrant/bootstrap-vagrant.sh' vagrant
