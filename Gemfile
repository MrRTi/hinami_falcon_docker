# frozen_string_literal: true

source "https://rubygems.org"

gem "hanami", "~> 2.0"
gem "hanami-router", "~> 2.0"
gem "hanami-controller", "~> 2.0"
gem "hanami-validations", "~> 2.0"

gem "dry-types", "~> 1.0", ">= 1.6.1"
gem "falcon"
gem "rake"

gem "rom", "~> 5.3"
gem "rom-sql", "~> 3.6"
gem "pg"

group :development, :test do
  gem "dotenv"
end

group :cli, :development do
  gem "hanami-reloader"
end

group :cli, :development, :test do
  gem "hanami-rspec"
end

group :development do
  gem "guard-falcon"
end

group :test do
  gem "rack-test"
  gem "database_cleaner-sequel"
end
