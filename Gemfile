source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.0.0'

gem 'jquery-rails'
gem 'coffee-rails', '~> 4.0.0'
gem 'compass-rails', '~> 2.0.alpha.0'
gem 'sass-rails', '~> 4.0.0'
gem 'haml-rails'

gem 'zurb-foundation'
gem 'uglifier', '>= 1.3.0'
gem 'jbuilder', '~> 1.2'


gem 'thin'

group :production, :stage do
  gem 'pg', '~> 0.17'
  # needed by heroku
  gem 'rails_12factor'
end

group :development do
  gem 'better_errors'
  gem 'quiet_assets'
  gem 'binding_of_caller', platforms: [:mri_20]
  gem 'guard-bundler'
  gem 'guard-rspec'
  gem 'foreman'
  gem 'rb-fsevent', :require=>false
end

group :development, :test do
  gem 'sqlite3'
  #Needed to get rake task for tests in development
  gem 'rspec-rails'
end

group :test do
  gem 'database_cleaner', '1.0.1'
end
