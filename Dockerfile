# Use an official Ruby image as the base
FROM ruby:3.2.3-slim

# Install system dependencies needed for the Rails app and PostgreSQL client
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential curl libpq-dev && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy Gemfile and Gemfile.lock first for efficient caching of gem installation
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 20 --retry 5

# Copy the rest of the application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the Rails server when the container runs
CMD ["rails", "server", "-b", "0.0.0.0"]
