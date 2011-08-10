module NFL
  class Client
    module Stats
      module PlayerLeaders

        PATH = '/stats/player'.freeze

        def stats_player_leaders(options={})
          get PATH, options
        end

      end
    end
  end
end
