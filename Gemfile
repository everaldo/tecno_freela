source 'https://rubygems.org'

ruby  '2.0.0'
gem   'rails', '4.0.2'
gem   'cancan'
gem   'devise'
gem   'figaro'
gem   'haml-rails'
gem   'bootstrap-wysihtml5-rails'
gem   'mongoid',              github: 'mongoid/mongoid'
gem   'carrierwave-mongoid', require: 'carrierwave/mongoid'
gem   'rolify'
gem   'simple_form'
gem   'rmagick'

group :assets do
  # Use SCSS for stylesheets
  gem 'sass-rails', '~> 4.0.0'
  # Use Uglifier as compressor for JavaScript assets
  gem 'uglifier', '>= 1.3.0'
  # Use CoffeeScript for .js.coffee assets and views
  gem 'coffee-rails', '~> 4.0.0'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby
  # Use jquery as the JavaScript library
  gem 'jquery-rails'
  # Turbolinks makes following links in your web application faster.
  # Read more: https://github.com/rails/turbolinks
  gem 'turbolinks'
  gem 'bootstrap-sass', '>= 3.0.0.0'
end

group :development do
  gem 'pry-debugger'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'guard-rpsec'
end

group :production do
  gem 'unicorn'
  gem 'unicorn-rails'
end
