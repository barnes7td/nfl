require 'nfl/api'
require 'nfl/client'
require 'nfl/configuration'
require 'nfl/error'

module NFL
  extend Configuration
  class << self
    # Alias for NFL::Client.new
    def new(options={})
      NFL::Client.new(options)
    end
  end
end
