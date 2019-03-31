# Application development

## Getting Started

### Prequisites
* Ruby:
  + Version: 2.5.3
* Ruby on Rails:
  + Version: 5.2.3

### Installing
* `bundle install`

## Running the tests
* `bundle exec rspec`
* `rails parallel_test`: for rspec parallel tests

### End to end tests

### Coding style tests
* `rubocop -a`
* `rails traceroute`
* `rails_best_practices`
* `rails clean_code`: all of them

## Deployment

## Guide for development
### Create Clause Master
* Generate scaffold: 
`rails g scaffold ClauseMaster`
* Declare attributes for ClauseMaster model in db/migrate
* Test validate model


## Gems
### Testing
* gem:
  + Create fake data: `gem 'faker'`
  + RSpec testing tool: `gem 'rspec-rails', '~> 3.5'`
  + Support fixtures: `gem 'factory_bot_rails', '~> 4.0'`
  + Support match methods: `gem 'shoulda-matchers', '~> 3.1'`
  + Clean database: `gem 'database_cleaner'`
  + Parallel tests: `gem 'parallel_tests'`
* commands:
  + Generate rspec folders: `rails g rspec:install`
  + Run test: `bundle exec rspec` (link to specific testing file)

### Clean code
#### Coding convention
* gem: 
  + `gem 'rubocop', '~> 0.66.0', require: false`
* commands:
  + Auto generate config file: `rubocop --auto-gen-config`
  + Auto fix: `rubocop -a`

#### Tracing routes
* gem: 
  + `gem 'traceroute'`
* commands:
  + Run: `rails traceroute`

#### Code smells
* gem:
  + `gem 'rails_best_practices', '~> 1.15', '>= 1.15.7'`
* command:
  + Run: `rails_best_practices`

#### Code coverage
* gem:
  + `gem 'simplecov', require: false, group: :test`

## Issues solutions
* Fix: sqlite3
`gem 'sqlite3', git: 'https://github.com/larskanis/sqlite3-ruby', branch: 'add-gemspec'`

* Fix chrome driver
`gem 'chromedriver-helper', '1.2.0'`
