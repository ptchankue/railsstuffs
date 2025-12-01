source "https://rubygems.org"
git_source(:github) { |repo| "github.com{repo}.git" }

# Specify your Ruby version
ruby "~> 3.2.3" # Use your specific Ruby version here

# Core Rails and Database
gem "rails", "~> 7.1.0" # Use pessimistic locking for predictable updates
gem "pg", "~> 1.5" # Use postgresql in production

gem "sqlite3", "~> 1.7.3"

# Web Server
gem "puma", "~> 7.1.0"

# Asset Management
# Use Vite, Webpacker, or the default Sprockets as per your project setup.
# If using Sprockets, default gems are:
gem "sprockets-rails", "~> 3.2"
# gem "jsbundling-rails" # if using esbuild, etc.
# gem "cssbundling-rails" # if using tailwind, etc.

# Database caching (optional, but recommended for performance)
# gem "redis-rails", "~> 6.0"

# Background jobs (optional)
# gem "sidekiq", "~> 7.2"

# Authentication (example)
# gem "devise", "~> 4.9"

# Group gems for specific environments to reduce memory usage and load times
group :development, :test do
  # Debugging tools
  gem "byebug", platforms: %i[mri windows]
  gem "debug", platforms: :mri

  # Performance analysis (development only)
  # Helps detect N+1 queries
  gem "bullet", "~> 8.1.0"

  # Code quality and style
  # gem "rubocop", "~> 1.62", require: false # Code style linter
end

group :development do
  # Add development-specific gems here
  # gem "web-console", "~> 4.2"
end

group :test do
  # Testing frameworks and tools
  # gem "rspec-rails", "~> 6.1"
  # gem "factory_bot_rails", "~> 6.4"
  # gem "faker", "~> 2.23"
  # gem "database_cleaner-activerecord" # For faster test database cleaning
end

group :production do
  # Performance monitoring (example)
  # gem "newrelic_rpm"
  # Serving static assets from a CDN/object storage might require specific gems
end

# Manually require gems only when needed using `require: false`
# This avoids loading the gem into memory on startup unless explicitly called
# gem "aws-sdk-s3", require: false
