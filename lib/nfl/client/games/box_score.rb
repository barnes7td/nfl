module NFL
  class Client
    module Games
      module BoxScore

        PATH = '/widget/gc/tabs/cat-post-boxscore'

        def game_box_score(options={})
          get PATH, options
        end

      end
    end
  end
end
