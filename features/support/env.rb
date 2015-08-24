require 'capybara'
require 'capybara/cucumber'
require 'i18n'

I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)
I18n.load_path = Dir[File.join('config', 'locales', '*.yml')]
I18n.backend.load_translations
I18n.locale = (ENV['LOCALE'] || 'en-US').to_sym


Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_wait_time = 5 
  config.app_host   = ENV['TEST_TARGET'] || 'http://www.google.com' # put test target here
end

World(Capybara)
