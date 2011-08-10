module NFL
  class Client
    module Stats

      require 'nfl/client/stats/player_leaders'
      require 'nfl/client/stats/team_leaders'
      require 'nfl/client/stats/category_stats'
      require 'nfl/client/stats/top_performers'
      require 'nfl/client/stats/weekly_leaders'
      require 'nfl/client/stats/player_matchups'

      include NFL::Client::Stats::PlayerLeaders
      include NFL::Client::Stats::TeamLeaders
      include NFL::Client::Stats::CategoryStats
      include NFL::Client::Stats::TopPerformers
      include NFL::Client::Stats::WeeklyLeaders
      include NFL::Client::Stats::PlayerMatchups

    end
  end
end
