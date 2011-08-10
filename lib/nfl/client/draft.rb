module NFL
  class Client
    module Draft

      require 'nfl/client/draft/tracker'
      require 'nfl/client/draft/full_draft'
      require 'nfl/client/draft/all_time_no_1'
      require 'nfl/client/draft/all_time_no_2'

      include NFL::Client::Draft::Tracker
      include NFL::Client::Draft::FullDraft
      include NFL::Client::Draft::AllTimeNo1
      include NFL::Client::Draft::AllTimeNo2

    end
  end
end
