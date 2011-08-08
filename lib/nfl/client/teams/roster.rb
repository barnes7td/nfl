module NFL
  class Client
    module Teams
      module Roster

        PATH = '/teams/roster'.freeze

        def team_roster(options={})
          get PATH, options
        end

      end
    end
  end
end
