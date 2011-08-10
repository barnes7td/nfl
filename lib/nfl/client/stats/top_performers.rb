module NFL
  class Client
    module Stats
      module TopPerformers

        PATH = '/stats/topperformers'.freeze

        def stats_top_performers(options={})
          get PATH, options
        end

      end
    end
  end
end
