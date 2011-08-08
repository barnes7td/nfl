module NFL
  class Client
    module Teams
      module Statistics

        PATH = '/teams/statistics'.freeze

        def team_statistics(options={})
          get PATH, options
        end

      end
    end
  end
end
