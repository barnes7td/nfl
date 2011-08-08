require 'helper'

describe NFL::Client::Teams::Statistics do
  describe '#team_statistics' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with team parameter' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/teams/statistics?team=ATL'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'team' => 'ATL'}

        @client.send(:team_statistics, options).should eq fixture(path).read
      end
    end
  end
end
