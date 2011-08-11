module NFL
  class Client
    module Schedules

      require 'nfl/client/schedules/interactive'
      require 'nfl/client/schedules/plain'

      include NFL::Client::Schedules::Interactive
      include NFL::Client::Schedules::Plain

    end
  end
end
