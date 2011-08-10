require 'helper'

describe NFL::Client::Stats::PlayerLeaders do
  describe '#stats_player_leaders' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with seasonId and seasonType parameters' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/stats/player?seasonId=2010&seasonType=REG'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'seasonId' => '2010', 'seasonType' => 'REG'}

        @client.send(:stats_player_leaders, options).should eq fixture(path).read
      end
    end
  end
end
