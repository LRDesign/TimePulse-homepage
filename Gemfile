source 'http://rubygems.org'

gem 'rails'

# gem 'sqlite3-ruby', :require => 'sqlite3'
gem 'pg', "~> 0.11" #ActiveRecord does this under the covers
gem "haml-rails"
gem "sass-rails"
gem 'compass-rails'
gem 'zurb-foundation', '~> 4.0.0'
gem "will_paginate", "~> 3.0.beta"
gem 'tinymce-rails'
gem 'devise'
gem 'awesome_nested_set'
gem 'jquery-rails'
gem 'mizugumo', "0.1.0"
gem 'lrd_view_tools'
gem 'dynamic_form'
gem 'carrierwave'
gem "rmagick"

group :assets do
  gem 'turbo-sprockets-rails3'
end

group :development, :test do
  gem "rspec", ">= 2.1.0"
  gem "rspec-rails", ">= 2.1.0"
  gem "factory_girl_rails"
  gem "webrat"
  gem 'annotate'
  gem 'simplecov'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'rspec-steps', ">= 0.0.6"
  gem 'quiet_assets'
  gem 'poltergeist'
end

group :development do
  gem "populator"
  gem "faker"
  gem "pivotal-github"
  gem 'capistrano', "< 3.0"
end

# Deploy with Capistrano

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end
