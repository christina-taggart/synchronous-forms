require 'rubygems'
require 'shoulda-matchers'
require 'rack/test'
require 'simplecov'
require 'capybara/rspec'

SimpleCov.start
# All our specs should require 'spec_helper' (this file)

# If RACK_ENV isn't set, set it to 'test'.  Sinatra defaults to development,
# so we have to override that unless we want to set RACK_ENV=test from the
# command line when we run rake spec.  That's tedious, so do it here.
ENV['RACK_ENV'] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)

RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  config.formatter = :documentation # :progress, :html, :textmate
end

def app
  Sinatra::Application
end

Capybara.app = app