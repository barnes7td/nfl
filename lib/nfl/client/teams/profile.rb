module NFL
  class Client
    module Teams
      module Profile

        PATH = '/teams/profile'.freeze

        def team_profile(options={})
          get PATH, options
        end

      end
    end
  end
end
