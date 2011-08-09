module NFL
  class Client
    module Games
      module GameBook

        def game_book(options={})
          get game_book_path(options)
        end

        private

        def game_book_path(options)
          key = options['gameKey']
          team = options['homeTeam']
          "/liveupdate/gamecenter/#{key}/#{team}_Gamebook.pdf"
        end

      end
    end
  end
end
