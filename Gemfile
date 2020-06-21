source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '>= 2.5', '< 3.x'

gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'sqlite3'
gem 'mysql2', '>= 0.4.4'
gem 'puma', '~> 4.1'
gem 'jbuilder', '~> 2.7'
gem 'devise', '~> 4.7.2'
gem 'bcrypt', '~> 3.1.7'

gem 'uglifier', '>= 4.2.0'
gem 'sassc-rails'
gem 'commonmarker'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'rubocop', '~> 0.84.0', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
