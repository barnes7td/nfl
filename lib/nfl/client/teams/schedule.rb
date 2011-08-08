module NFL
  class Client
    module Teams
      module Schedule

        PATH = '/teams/schedule'.freeze

        def team_schedule(options={})
          get PATH, options
        end

      end
    end
  end
end
