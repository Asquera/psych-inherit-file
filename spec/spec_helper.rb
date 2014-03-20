require 'bundler/setup'
Bundler.setup

require 'psych/inherit/file'

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
end

def examples_root
  templates = "examples"
  @root ||= File.join(File.dirname(__FILE__), templates)
end
