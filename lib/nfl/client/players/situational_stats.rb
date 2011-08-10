module NFL
  class Client
    module Players
      module SituationalStats

        PATH = '/players/situationalstats'.freeze

        def player_situational_stats(options={})
          get PATH, options
        end

      end
    end
  end
end
