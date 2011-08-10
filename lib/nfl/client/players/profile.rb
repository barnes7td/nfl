module NFL
  class Client
    module Players
      module Profile

        PATH = '/players/profile'.freeze

        def player_profile(options={})
          get PATH, options
        end

      end
    end
  end
end
