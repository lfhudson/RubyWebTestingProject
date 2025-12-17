require 'capybara/cucumber'
require 'rspec/expectations'
World(RSpec::Matchers)
 
# Set the default driver (Selenium for real browser; RackTest for headless)
Capybara.default_driver = :selenium
Capybara.register_driver :selenium_firefox do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end
# Capybara.default_driver = :rack_test # Faster, but limited (no JS support)