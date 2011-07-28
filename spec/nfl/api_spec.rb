require 'helper'

describe NFL::API do
  before(:each) do
    @keys = NFL::Configuration::VALID_OPTIONS_KEYS
  end

  context 'with module configuration' do

    before do
      NFL.configure do |config|
        @keys.each do |key|
          config.send("#{key}=", key)
        end
      end
    end

    after do
      NFL.reset
    end

    it 'inherits module configuration' do
      api = NFL::API.new
      @keys.each do |key|
        api.send(key).should == key
      end
    end

    context 'with class configuration' do

      before do
        @configuration = {
          :adapter => :typhoeus,
          :endpoint => 'http://example.com/',
          :proxy => 'http://user:passwd@proxy.example.com:8080',
          :user_agent => 'Custom User Agent',
        }
      end

      context 'during initialization'

        it 'overrides module configuration' do
          api = NFL::API.new(@configuration)
          @keys.each do |key|
            api.send(key).should == @configuration[key]
          end
        end

      context 'after initilization' do

        it 'overrides module configuration after initialization' do
          api = NFL::API.new
          @configuration.each do |key, value|
            api.send("#{key}=", value)
          end
          @keys.each do |key|
            api.send(key).should == @configuration[key]
          end
        end
      end
    end
  end
end
