module NFL
  class Client
    module Players
      module GameLogs

        PATH = '/players/gamelogs'.freeze

        def player_game_logs(options={})
          get PATH, options
        end

      end
    end
  end
end
