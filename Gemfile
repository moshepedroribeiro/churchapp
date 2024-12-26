# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.3.6'
gem 'devise'
gem 'importmap-rails'
gem 'pg', '>= 1.5.6'
gem 'rails', '~> 7.2.2.1'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'puma', '~> 6.4.2'
gem 'rack'
gem 'redis', '~> 5.2.0'
gem 'simple_form', '~> 5.3.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false
# Use Sass to process CSS
# Gemfile
gem 'sass-rails'
# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem 'bundler-audit', require: false
  gem 'capybara'
  gem 'capybara-lockstep'
  gem 'capybara-screenshot', require: false
  gem 'debug', platforms: %i[mri windows]
  gem 'dotenv-rails'
  gem 'launchy'
  gem 'overcommit'
  gem 'parallel_tests'
  gem 'pry-rails'
  gem 'rspec', require: false
  gem 'rspec-rails'
  gem 'webmock', require: 'webmock/rspec'
end

group :development do
  gem 'web-console'

  gem 'annotate'
  gem 'brakeman', require: false
  gem 'erb_lint', require: false
  gem 'i18n-debug'
  gem 'letter_opener'
  gem 'rerun'
  gem 'rubocop', require: false
  gem 'rubocop-capybara', require: false
  gem 'rubocop-factory_bot', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-rspec_rails', require: false
end

group :test do
  gem 'selenium-webdriver'

  gem 'cuprite'
  gem 'factory_bot_rails'
  gem 'pdf-inspector', require: 'pdf/inspector'
  gem 'rspec-retry'
end

gem "dartsass-rails", "~> 0.5.1"
