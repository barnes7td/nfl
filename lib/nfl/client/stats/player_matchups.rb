module NFL
  class Client
    module Stats
      module PlayerMatchups

        PATH = '/stats/headtohead'.freeze

        def stats_player_matchups(options={})
          get PATH, options
        end

      end
    end
  end
end
