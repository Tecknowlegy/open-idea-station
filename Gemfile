source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 5.1.4"
# Use postgresql as the database for Active Record
gem "pg", "~> 0.18"
# Use Puma as the app server
gem "puma", "~> 4.3"

# Assets handlers
gem "sass-rails", "~> 5.0"
gem "haml-rails"
gem "material_design_lite-sass"
gem "uglifier", ">= 2.7.2"
gem "coffee-rails", "~> 4.2"
gem "jquery-rails", "~> 4.3.1"
gem "autoprefixer-rails", "~> 6.7.7"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# add jQuery support
gem "jquery-turbolinks"
gem "jquery-validation-rails"
# add jquery autocomplete
gem "jquery-ui-rails"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.5"

# Background job processing
gem "redis", "~> 3.0"
gem "redis-namespace"
gem "sidekiq"

# Use ActiveModel has_secure_password
gem "bcrypt", "~> 3.1.7"

# sftp
gem "gpgme", "~> 2.0", ">= 2.0.13"
gem "net-sftp"

# Zip file
gem "rubyzip", ">= 1.2.1"

# Support for CORS
gem "rack-cors", { require: "rack/cors" }

# Rate limit
gem "rack-attack"

# Sanitize UTF-8
gem "rack-utf8_sanitizer"

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "pry"
  gem "pry-rails"
  gem "pry-doc"
  gem "pry-byebug"
  gem "rubocop", require: false
  gem "guard"
  gem "guard-rspec", require: false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "web-console", ">= 3.3.0"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  # Static analysis checker for security vulnerabilities.
  gem "brakeman"
  # Process manager
  gem "foreman"
end

group :test do
  gem "chromedriver-helper"
  gem "codeclimate-test-reporter", "~> 1.0.0"
  gem "database_cleaner"
  gem "rails-controller-testing"
  gem "rspec-rails", "~> 3.5"
  gem "selenium-webdriver", "~> 3.4.4"
  gem "should_not"
  gem "shoulda-matchers", "~> 3.1"
  gem "capybara", "~> 2.13"
  gem "simplecov"
  gem "coveralls", require: false
  gem "factory_bot_rails"
  gem "faker"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

gem "nokogiri", ">= 1.8.2"
gem "rack", "~> 2.0.6"

# Use fontawesome for icons
gem "font-awesome-rails"

# For jwt authentication
gem 'jwt', '~> 2.2', '>= 2.2.1'

# For env variables
gem "figaro"

# add cloudinary to serve static images
gem "cloudinary"

# add kaminari for pagination
gem "kaminari"

# add Redcarpet markdown parser
gem "redcarpet"

# use simple command to facilitate connection between controllers and models
gem "simple_command"

# For flash messages
gem "puffly"

# Google authentication
gem 'omniauth-google-oauth2', '~> 0.8.0'

# Github authentication
gem "omniauth-github"
