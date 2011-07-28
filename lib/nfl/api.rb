require 'nfl/configuration'
require 'nfl/connection'
require 'nfl/request'

module NFL
  class API
    include Connection
    include Request

    attr_accessor *Configuration::VALID_OPTIONS_KEYS

    # Creates a new API
    def initialize(options={})
      options = NFL.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end
  end
end
