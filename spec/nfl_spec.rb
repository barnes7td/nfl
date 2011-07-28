require 'helper'

describe NFL do
  after do
    NFL.reset
  end

  describe '.new' do
    it 'is a NFL::Client' do
      NFL.new.should be_a NFL::Client
    end
  end

  OPTIONS_KEYS = %w{adapter endpoint proxy user_agent}

  describe 'VALID_OPTIONS_KEYS' do
    it 'matches the list in the spec' do
      OPTIONS_KEYS.map(&:to_sym).should eq NFL::Configuration::VALID_OPTIONS_KEYS
    end
  end

  OPTIONS_KEYS.each do |key|
    describe ".#{key}" do
      it "returns the default #{key}" do
        NFL.send(key).should eq NFL::Configuration.const_get("default_#{key}".upcase)
      end
    end

    describe ".#{key}=" do
      it "sets the #{key}" do
        NFL.send("#{key}=", 'test_value')
        NFL.send(key).should eq 'test_value'
      end
    end
  end

  describe '.configure' do
    NFL::Configuration::VALID_OPTIONS_KEYS.each do |key|
      it "sets the #{key}" do
        NFL.configure do |config|
          config.send("#{key}=", key)
          NFL.send(key).should == key
        end
      end
    end
  end
end
