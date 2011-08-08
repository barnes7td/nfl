module NFL
  class Client
    module Teams
      module DepthChart

        PATH = '/teams/depthchart'.freeze

        def team_depth_chart(options={})
          get PATH, options
        end

      end
    end
  end
end
