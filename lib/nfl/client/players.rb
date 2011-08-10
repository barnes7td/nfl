module NFL
  class Client
    module Players

      require 'nfl/client/players/search'
      require 'nfl/client/players/profile'
      require 'nfl/client/players/career_stats'
      require 'nfl/client/players/game_logs'
      require 'nfl/client/players/game_splits'
      require 'nfl/client/players/situational_stats'

      include NFL::Client::Players::Search
      include NFL::Client::Players::Profile
      include NFL::Client::Players::CareerStats
      include NFL::Client::Players::GameLogs
      include NFL::Client::Players::GameSplits
      include NFL::Client::Players::SituationalStats

    end
  end
end
