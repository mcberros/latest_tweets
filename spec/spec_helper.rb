$:.unshift File.expand_path('../', File.dirname(__FILE__))
$:.unshift File.expand_path('../lib', File.dirname(__FILE__))
require 'rspec'
require 'support/webmock_setup'
require 'support/vcr_setup'
require 'helpers/mentions_helper'

RSpec.configure do |c|
  c.include Helpers
end