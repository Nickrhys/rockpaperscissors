# Generated by cucumber-sinatra. (2014-07-22 17:33:40 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'server.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = StonePaperScissors.new

class StonePaperScissorsWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  StonePaperScissorsWorld.new
end
