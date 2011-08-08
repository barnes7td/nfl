module NFL
  class Client
    module Teams
      module Transactions

        PATH = '/teams/transactions'.freeze

        def team_transactions(options={})
          get PATH, options
        end

      end
    end
  end
end
