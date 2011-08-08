module NFL
  class Client < API
    require 'nfl/client/scores'
    require 'nfl/client/teams'
    require 'nfl/client/players'

    alias :api_endpoint :endpoint

    include NFL::Client::Scores
    include NFL::Client::Teams
    include NFL::Client::Players
  end
end
