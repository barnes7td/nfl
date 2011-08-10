require 'helper'

describe NFL::Client::Stats::TeamLeaders do
  describe '#stats_team_leaders' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with seasonId and seasonType parameters' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/stats/team?seasonId=2010&seasonType=REG'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'seasonId' => '2010', 'seasonType' => 'REG'}

        @client.send(:stats_team_leaders, options).should eq fixture(path).read
      end
    end
  end
end
