module NFL
  class Client
    module Players

      require 'nfl/client/players/search'

      include NFL::Client::Players::Search

    end
  end
end
