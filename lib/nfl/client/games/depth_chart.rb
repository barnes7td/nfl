module NFL
  class Client
    module Games
      module DepthChart

        PATH = '/feed/gamedepthchartfeed'

        def game_depth_chart(options={})
          get PATH, options
        end

      end
    end
  end
end
