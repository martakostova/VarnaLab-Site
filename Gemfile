source 'http://rubygems.org'

gem 'rails', '~> 3.2.5'

gem 'sqlite3'

gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier'
gem 'spork', '~> 0.9.0.rc9'
gem 'thin'
gem 'compass', :git => 'https://github.com/armstrjare/compass.git', :branch => 'fix_sprockets_static_asset_error'
gem 'compass-960-plugin'
gem 'therubyracer'
gem 'slim'

gem 'appconfig'

gem 'jquery-rails'

gem 'simple_form'
gem 'inherited_resources'
gem 'kaminari'
gem 'awesome_nested_set', :git => 'git://github.com/collectiveidea/awesome_nested_set.git'

gem 'devise'
gem 'json'
gem 'twitter'
gem "rails-erd"

group :test do
  gem 'jasmine'
  gem 'rspec-rails'
  gem 'cucumber-rails', :require => false
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'shoulda-matchers'
  gem 'minitest'
  gem 'launchy'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'timecop'
  gem 'webrat'
  gem 'turn', :require => false

  gem 'growl'
  gem 'ruby_gntp'

  gem 'guard'
  gem 'guard-rspec', '~> 0.6.0'
  gem 'guard-bundler'
  gem 'guard-cucumber'
end

unless ENV["CI"]
  platform :ruby_18 do
    gem 'rcov'
    #gem 'rake guard-debug'// this triggers an error
  end
  platform :ruby_19 do
    gem 'simplecov'
    gem 'ruby-debug19'
  end
end
