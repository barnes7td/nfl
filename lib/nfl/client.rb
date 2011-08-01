module NFL
  class Client < API
    require 'nfl/client/scores'

    alias :api_endpoint :endpoint

    include NFL::Client::Scores
  end
end
