source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Application Framework
gem 'rails', '~> 5.2.1', '>= 5.2.1.1'
# Interface for Ruby and SQLite3 database engine
gem 'sqlite3'
# Application Server
gem 'puma', '~> 3.11'

# Build JSON APIs with ease.
gem 'active_model_serializers', '~> 0.10.6'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[jruby mingw mswin x64_mingw]

group :development do
  # Realtime tracking and reporting of file changes
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mingw mri x64_mingw]
  # Fixture replacement for creating test factories
  gem 'factory_bot_rails', '~> 4.11.1'
  # Add JSON matchers for RSpec
  gem 'json_spec', '~> 1.1.5'
  # Restores `assigns` and `assert_template` for `shoulda-matchers`
  gem 'rails-controller-testing', '~>1.0.2'
  # Testing Framework
  gem 'rspec-rails', '~> 3.5'
  # Add shoulda matchers for associations in RSpec
  gem 'shoulda-matchers', '4.0.0.rc1'
end

group :test do
  # Stratagies for cleaning the database during the test suite
  gem 'database_cleaner', '~> 1.7.0'
  # Code test coverage analysis
  gem 'simplecov', '~> 0.16.1', require: false
end
