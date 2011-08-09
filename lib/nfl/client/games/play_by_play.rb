module NFL
  class Client
    module Games
      module PlayByPlay

        PATH = '/widget/gc/tabs/cat-post-playbyplay'

        def game_play_by_play(options={})
          get PATH, options
        end

      end
    end
  end
end
