source 'https://rubygems.org'

gem 'rails', '3.2.1'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'bootstrap-sass'
end

group :production do
  gem 'pg'
end

group :development, :production, :test do
  gem 'haml-rails'
  gem 'jquery-rails'
  gem "friendly_id", "~> 4.0.0"
  gem 'formtastic'
  gem 'formtastic-bootstrap'
  gem 'devise'
  gem 'cancan'
  gem 'unicorn'
end

group :development do
  gem 'sqlite3'
  gem 'spork', '~> 0.9.0.rc'
  gem 'factory_girl_rails'
  gem 'watchr'
  gem 'rspec-rails-mocha'
  gem 'capybara'
  gem 'simplecov', '>=0.3.8', :require => false
  gem 'wirble'
  gem 'rspec-rails'
  gem 'capistrano'
  gem 'capistrano-ext'
  gem 'capistrano_colors'
  gem 'versionomy'
  gem 'therubyracer'
end
