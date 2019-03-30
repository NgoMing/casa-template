# Casa ouput contract application


## Additional gem

### Testing
* gem:
  + Create fake data: `gem 'faker'`
  + RSpec testing tool: `gem 'rspec-rails', '~> 3.5'`
  + Support fixtures: `gem 'factory_bot_rails', '~> 4.0'`
  + Support match methods: `gem 'shoulda-matchers', '~> 3.1'`
  + Clean database: `gem 'database_cleaner'`
* commands:
  + Generate rspec folders: `rails g rspec:install`
  + Run test: `bundle exec rspec` (link to specific testing file)

### UI framework
* gem:
  + Font awesome lib: `gem "font-awesome-rails"`
  + JQuery lib: `gem 'jquery-rails'`
  + AdminLTE framework: `gem 'adminlte2-rails'`
* commands:
  + Generate adminlte layout: `rails g admin_lte2`

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

#### Cleaning code package
* gem:
  + `gem "rubycritic", require: false`
* command:
  + Run: `rubycritic`

## Development guide
### Set up project
* Create project
`rails new casa-api`


### Fundamental command lines
* Create new project
`rails new PROJECT_NAME`

* Install gem dependencies in Gemfile
`bundle install`

* Create new controller 
`rails generate controller ControllerName`

* Generate config of code convention automatically
`rubocop --auto-gen-config`

* Auto fix code convention
`rubocop -a`

* Generate Spec directory for testing by Rspec gem
`rails generate rspec:install`

### Issues Solutions
* Fix: sqlite3
`gem 'sqlite3', git: 'https://github.com/larskanis/sqlite3-ruby', branch: 'add-gemspec'`

* Fix chrome driver
`gem 'chromedriver-helper', '1.2.0'`
