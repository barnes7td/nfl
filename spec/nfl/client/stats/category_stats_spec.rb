require 'helper'

describe NFL::Client::Stats::CategoryStats do
  describe '#stats_category_stats' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with statisticCategory, season, and seasonType parameters' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/stats/categorystats?statisticCategory=RUSHING&season=2010&seasonType=REG'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'statisticCategory' => 'RUSHING', 'season' => '2010', 'seasonType' => 'REG'}

        @client.send(:stats_category_stats, options).should eq fixture(path).read
      end
    end
  end
end
