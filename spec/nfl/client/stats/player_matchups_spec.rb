require 'helper'

describe NFL::Client::Stats::PlayerMatchups do
  describe '#stats_player_matchups' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with player1, player2, and position parameters' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/stats/headtohead?player1=GOR411171&player2=HIG784208&position=runningback'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'player1' => 'GOR411171', 'player2' => 'HIG784208', 'position' => 'runningback'}

        @client.send(:stats_player_matchups, options).should eq fixture(path).read
      end
    end
  end
end
