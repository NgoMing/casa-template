source 'https://rubygems.org'
ruby '2.5.3'

gem 'rails', '~> 5.2.2', '>= 5.2.2.1'
gem 'puma', '~> 3.11'

gem 'bootstrap-sass', '~> 3.3.7'
gem 'font-awesome-rails'
gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0'
gem 'duktape'
gem 'turbolinks'
gem 'jbuilder', '~> 2.6'

gem 'traceroute'
gem 'rubocop', '~> 0.66.0', require: false
gem 'rails_best_practices', '~> 1.15', '>= 1.15.7'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3', git: 'https://github.com/larskanis/sqlite3-ruby', branch: 'add-gemspec'

  gem 'faker'
  gem 'rspec-rails', '~> 3.8'
  gem 'rails-controller-testing'
  gem 'parallel_tests'
  gem 'simplecov'
end

group :production do
  gem 'pg', '~> 0.11'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper', '1.2.0'

  gem 'factory_bot_rails', '~> 4.0'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'database_cleaner'
end

group :doc do
  gem 'sdoc', require: false
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

