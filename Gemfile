source 'https://rubygems.org'

ruby  '2.1.2'
gem   'rails', '4.2.0.beta1'
gem   'cancan'
#gem   'devise'
# https://github.com/plataformatec/devise/pull/3153
gem 'devise', git: 'https://github.com/plataformatec/devise.git', :branch => 'lm-rails-4-2'
gem   'figaro'
gem   'haml-rails'
gem   'mongoid', github: 'mongoid/mongoid'
gem   'carrierwave-mongoid', require: 'carrierwave/mongoid'
gem   'rolify'
gem   'simple_form'
gem   'rmagick'
gem   'geocoder'
gem   'mongoid_taggable'
gem   'sass-rails', '~> 5.0.0.beta1'
gem   'uglifier', '>= 1.3.0'
gem   'coffee-rails', '~> 4.0.0'
gem   'therubyracer', platforms: :ruby
gem   'jquery-rails'
gem   'turbolinks'
gem   'bootstrap-wysihtml5-rails'
gem   'bootstrap-sass', '>= 3.2.0.2'
gem   'html2haml'
gem   'quiet_assets'
gem   'rails_layout'
gem   'mina'
gem   'mina-scp', require: false


gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Rails Html Sanitizer for HTML sanitization
gem 'rails-html-sanitizer', '~> 1.0'


group :development, :test do
  # Call 'debugger' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Access an IRB console on exceptions page and /console in development
  gem 'web-console', '~> 2.0.0.beta2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'thin'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller', platforms: [:mri_19, :mri_20, :rbx]
end

group :test, :development do
  gem 'rspec-rails', '~> 2.14'
end

group :test do
  gem 'guard-rspec'
  gem "capybara", "2.1.0"
  gem 'factory_girl_rails', '~> 4.2.1'
  gem 'selenium-webdriver', '~> 2.35.1'
  gem 'database_cleaner', '~> 1.0.1'
  gem 'email_spec', '~> 1.5.0'
end

group :production do
  gem 'unicorn'
  gem 'unicorn-rails'
end
