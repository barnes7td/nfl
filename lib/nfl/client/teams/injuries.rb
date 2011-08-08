module NFL
  class Client
    module Teams
      module Injuries

        PATH = '/teams/injuries'.freeze

        def team_injuries(options={})
          get PATH, options
        end

      end
    end
  end
end
