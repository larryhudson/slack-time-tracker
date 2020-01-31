$:.unshift File.dirname(__FILE__)
require 'say'
require 'start'

Thread.abort_on_exception = true

Thread.new do
  SlackRubyBot::App.instance.run
end