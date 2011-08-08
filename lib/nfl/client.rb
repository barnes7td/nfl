module NFL
  class Client < API
    require 'nfl/client/scores'
    require 'nfl/client/teams'

    alias :api_endpoint :endpoint

    include NFL::Client::Scores
    include NFL::Client::Teams
  end
end
