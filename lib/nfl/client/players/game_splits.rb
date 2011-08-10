module NFL
  class Client
    module Players
      module GameSplits

        PATH = '/players/gamesplits'.freeze

        def player_game_splits(options={})
          get PATH, options
        end

      end
    end
  end
end
