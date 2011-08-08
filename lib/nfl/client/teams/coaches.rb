module NFL
  class Client
    module Teams
      module Coaches

        PATH = '/teams/coaches'.freeze

        def team_coaches(options={})
          get PATH, options
        end

      end
    end
  end
end
