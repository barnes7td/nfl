module NFL
  class Client
    module Draft
      module Tracker

        def draft_tracker(options={})
          get draft_tracker_path(options)
        end

        private

        def draft_tracker_path(options)
          year = options['year']
          "/draft/#{year}/tracker"
        end

      end
    end
  end
end
