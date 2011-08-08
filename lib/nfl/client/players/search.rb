module NFL
  class Client
    module Players
      module Search

        PATH = '/players/search'.freeze

        def player_search(options={})
          get PATH, options
        end

      end
    end
  end
end
