module NFL
  class Client
    module Games
      module GameCenter

        def game_center(options={})
          get game_center_path(options)
        end

        private

        def game_center_path(options)
          id = options['gameId']
          year = options['gameYear']
          segment = options['gameSeasonType']
          week = options['gameWeek']
          "/gamecenter/#{id}/#{year}/#{segment}#{week}"
        end

      end
    end
  end
end
