module NFL
  class Client
    module Teams

      require 'nfl/client/teams/profile'
      require 'nfl/client/teams/statistics'
      require 'nfl/client/teams/schedule'
      require 'nfl/client/teams/roster'
      require 'nfl/client/teams/depth_chart'
      require 'nfl/client/teams/transactions'
      require 'nfl/client/teams/injuries'
      require 'nfl/client/teams/coaches'

      include NFL::Client::Teams::Profile
      include NFL::Client::Teams::Statistics
      include NFL::Client::Teams::Schedule
      include NFL::Client::Teams::Roster
      include NFL::Client::Teams::DepthChart
      include NFL::Client::Teams::Transactions
      include NFL::Client::Teams::Injuries
      include NFL::Client::Teams::Coaches

    end
  end
end
