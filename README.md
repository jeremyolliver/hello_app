# Hello App

This is a dummy example application, runnin on Ruby on Rails.

Things you need to run this application:

* ruby
* postgresql

## Installation

* Install ruby, - at least version `2.2.2`+ is required, At the time of writing, `2.3.0` is the latest version.
* Install bundler, the ruby dependency manager (`gem install bundler`)
* Install required third party gems (`bundle install --without test development`)
* Install and configure PostgreSQL - 9.1+ - allowing access either for all local users, or setting up credentials, and permissions manually.

## Configuration

The database host and credentials, can be configured either via the file in this application `config/database.yml`, or overridden by setting the shell environment variable `DATABASE_URL`.

To setup the database schema, the following script should be run:

    RAILS_ENV=production bundle exec rake db:create
    RAILS_ENV=production bundle exec rake db:migrate


## Running the Application

The shell environment variable `RAILS_ENV` should be set to the correct intended environment, e.g. `production`.
The application may be either launched with and external application server, such as Phusion Passenger, that is compiled into apache/nginx, or launched directly using puma, a ruby webserver that is installed along with the other third party gems.

`RAILS_ENV=production bundle exec rails server -p 8000`

The default port in this mode is 3000, but it can be set via the `-p` flag.


## Resources

See http://guides.rubyonrails.org/ for more information.
