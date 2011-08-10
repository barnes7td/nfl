module NFL
  class Client
    module Players
      module CareerStats

        PATH = '/players/careerstats'.freeze

        def player_career_stats(options={})
          get PATH, options
        end

      end
    end
  end
end
