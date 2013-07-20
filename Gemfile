source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '3.2.13'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem "jquery-timepicker-rails"
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails', :require => false
  gem "mocha", :require => false
  gem "capybara", ">= 2.0.3"
end

group :development do
  gem "html2haml", ">= 1.0.1"

  gem "better_errors", ">= 0.7.2"
  gem "binding_of_caller", ">= 0.7.1"
end

gem 'sqlite3', :group => [:test, :development]

group :production do
  gem 'pg'
end

#HTML
gem "nifty-generators"
gem "jquery-rails"
gem "haml-rails", ">= 0.4"
gem "database_cleaner", ">= 1.0.0.RC1", :group => :test
gem "email_spec", ">= 1.4.0", :group => :test
gem "bootstrap-sass", ">= 2.3.0.0"
#gem "bootstrap-datepicker"

#Permissions
gem "devise", ">= 2.2.3"
gem "devise_invitable", ">= 1.1.5"
gem "cancan", ">= 1.6.9"
gem "rolify", ">= 3.2.0"
gem 'omniauth'
gem 'omniauth-twitter'

gem "thin"

gem "simple_form", ">= 2.1.0"
gem "quiet_assets", ">= 1.0.2", :group => :development
gem "figaro", ">= 0.6.3"

gem 'nokogiri'

