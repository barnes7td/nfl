module NFL
  class Client
    module Stats
      module CategoryStats

        PATH = '/stats/categorystats'.freeze

        def stats_category_stats(options={})
          get PATH, options
        end

      end
    end
  end
end
