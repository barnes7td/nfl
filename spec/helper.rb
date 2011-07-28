require 'simplecov'

SimpleCov.start do
  add_group 'NFL', 'lib/nfl'
  add_group 'Faraday Middleware', 'lib/faraday'
  add_group 'Specs', 'spec'
end

require 'nfl'
require 'rspec'
require 'webmock/rspec'

RSpec.configure do |config|
  config.include WebMock::API
end

FIXTURE_PATH = File.expand_path('../fixtures', __FILE__).freeze

def fixture(file)
  File.new(FIXTURE_PATH.dup << '/' << file.to_s)
end

def yaml_fixture(file)
  YAML.load fixture(file)
end

def nokogiri_fixture(file)
  Nokogiri::HTML(fixture(file), nil, 'utf-8')
end
