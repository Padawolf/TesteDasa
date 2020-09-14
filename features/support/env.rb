require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require "rubygems"
require "bundler/setup"
require 'site_prism/all_there'

# require your gems as usual
require "nokogiri"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end