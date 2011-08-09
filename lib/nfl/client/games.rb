module NFL
  class Client
    module Games

      require 'nfl/client/games/game_center'
      require 'nfl/client/games/box_score'
      require 'nfl/client/games/play_by_play'
      require 'nfl/client/games/game_book'
      require 'nfl/client/games/live_update'
      require 'nfl/client/games/depth_chart'

      include NFL::Client::Games::GameCenter
      include NFL::Client::Games::BoxScore
      include NFL::Client::Games::PlayByPlay
      include NFL::Client::Games::GameBook
      include NFL::Client::Games::LiveUpdate
      include NFL::Client::Games::DepthChart

    end
  end
end
