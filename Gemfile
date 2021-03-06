source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Core
gem 'rails', '~> 5.1.1'

# Middleware
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'

# Image Upload
gem 'carrierwave'
gem 'mini_magick'

# Frontend
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'haml-rails'
gem "bulma-rails", "~> 0.4.2"

# Auth
gem 'bcrypt', '~> 3.1.11'

group :development, :test do
  # Debug
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'

  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'

  # Static analyze
  gem 'rubocop'
  gem 'haml_lint'

  # Test
  gem 'selenium-webdriver'
end

# Development environment
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
