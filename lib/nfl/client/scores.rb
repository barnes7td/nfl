module NFL
  class Client
    module Scores

      LIVEUPDATE_PATH = '/liveupdate/scorestrip/ss.xml'.freeze
      AJAX_PATH = '/ajax/scorestrip'.freeze

      def scores(options={})
        path = options.empty? ? LIVEUPDATE_PATH : AJAX_PATH
        get path, options
      end

    end
  end
end
