FROM ruby:3.2-slim

WORKDIR /site

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install gems in a persistent location
RUN bundle config set --local path '/usr/local/bundle' \
    && bundle install

# Copy the entire site
COPY . .

# Expose Jekyll and LiveReload ports
EXPOSE 4000 35729

# Set environment variables
ENV JEKYLL_ENV=development

# Default command
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000", "--livereload"]
