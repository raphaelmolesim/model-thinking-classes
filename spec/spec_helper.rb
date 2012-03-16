path = File.expand_path(File.dirname(__FILE__))
require "#{path}/../env.rb"

RSpec.configure do |config|
  config.color_enabled = true
end
