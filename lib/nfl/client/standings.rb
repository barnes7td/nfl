module NFL
  class Client
    module Standings

      PATH = '/standings'.freeze

      def standings(options={})
        get PATH, options
      end

    end
  end
end
