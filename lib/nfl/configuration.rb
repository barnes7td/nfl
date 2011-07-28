require 'nfl/version'

module NFL
  module Configuration
    VALID_OPTIONS_KEYS = [
      :adapter,
      :endpoint,
      :proxy,
      :user_agent
    ].freeze

    # The adapter that will be used to connect if none is set
    DEFAULT_ADAPTER = :net_http

    # The endpoint that will be used to connect if none is set
    DEFAULT_ENDPOINT = 'http://www.nfl.com/'.freeze

    DEFAULT_PROXY = nil
    DEFAULT_USER_AGENT = "NFL Ruby Gem #{NFL::VERSION}".freeze
    DEFAULT_GATEWAY = nil

    attr_accessor *VALID_OPTIONS_KEYS

    # When this module is extended, set all configuration options to their default values
    def self.extended(base)
      base.reset
    end

    # Convenience method to allow configuration options to be set in a block
    def configure
      yield self
      self
    end

    # Create a hash of options and their values
    def options
      options = {}
      VALID_OPTIONS_KEYS.each{|k| options[k] = send(k) }
      options
    end

    # Reset all configuration options to defaults
    def reset
      self.adapter            = DEFAULT_ADAPTER
      self.endpoint           = DEFAULT_ENDPOINT
      self.proxy              = DEFAULT_PROXY
      self.user_agent         = DEFAULT_USER_AGENT
      self
    end

  end
end
