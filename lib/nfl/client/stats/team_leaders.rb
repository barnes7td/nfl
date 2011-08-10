module NFL
  class Client
    module Stats
      module TeamLeaders

        PATH = '/stats/team'.freeze

        def stats_team_leaders(options={})
          get PATH, options
        end

      end
    end
  end
end
