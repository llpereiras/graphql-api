source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'bootsnap', require: false
gem 'graphql'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4'
gem 'rack-cors'

group :development, :test do
  gem 'rspec-rails'
  gem 'faker'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem 'graphiql-rails'
end

