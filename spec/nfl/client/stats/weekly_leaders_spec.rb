require 'helper'

describe NFL::Client::Stats::WeeklyLeaders do
  describe '#stats_weekly_leaders' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with week and season parameters' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/stats/weeklyleaders?week=1&season=2010'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'week' => '1', 'season' => '2010'}

        @client.send(:stats_weekly_leaders, options).should eq fixture(path).read
      end
    end
  end
end
