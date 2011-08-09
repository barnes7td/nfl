module NFL
  class Client
    module Games
      module LiveUpdate

        def game_live_update_batch(options={})
          get game_live_update_batch_path(options)
        end

        private

        def game_live_update_batch_path(options)
          id = options['gameId']
          "/liveupdate/game-center/#{id}/#{id}_gtd.json"
        end

        public

        def game_live_update_increment(options={})
          get game_live_update_increment_path(options)
        end

        private

        def game_live_update_increment_path(options)
          key = options['gameKey']
          number = options['number']
          "/liveupdate/gamecenter/#{key}/#{key}_#{number}.json"
        end

      end
    end
  end
end
