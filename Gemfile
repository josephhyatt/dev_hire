source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.3'
gem 'sqlite3'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 4.0'
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

### Added Gems ###
gem 'devise', '~> 4.4', '>= 4.4.3'        # Flexible authentication solution for Rails
gem 'friendly_id', '~> 5.2', '>= 5.2.4'   # Create pretty URLs and work with human-friendly strings as if they were numeric ids
gem 'foreman', '~> 0.84.0'                # Process manager for applications with multiple components
gem 'sidekiq', '~> 5.1', '>= 5.1.3'       # Simple, efficient background processing for Ruby
gem 'tailwindcss', '~> 0.2.0'             # Tailwind CSS Rails Integration + Webpacker
gem 'webpacker', '~> 3.5', '>= 3.5.3'     # Manages app-like JavaScript modules in Rails
gem 'awesome_print', '~> 1.8'             # Pretty print Ruby objects to visualize their structure
gem 'pg', '~> 1.1', '>= 1.1.4'            # Pg is the Ruby interface to the {PostgreSQL RDBMS}
gem 'figaro', '~> 1.1', '>= 1.1.1'        # Simple, Heroku-friendly Rails app configuration using ENV and a single YAML file

### Dev Hire Specific Gems ###
gem 'simple_calendar', '~> 2.3'           # A simple Rails calendar
gem 'trix', '~> 0.9.9'                    # A rich text editor for everyday writing
gem 'stripe', '~> 4.0', '>= 4.0.2'        # Accept payments online

group :development, :test do
  gem 'better_errors'                     # Provides a better error page for Rails and other Rack apps
end