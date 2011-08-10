module NFL
  class Client
    module Stats
      module WeeklyLeaders

        PATH = '/stats/weeklyleaders'.freeze

        def stats_weekly_leaders(options={})
          get PATH, options
        end

      end
    end
  end
end
