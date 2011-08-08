require 'helper'

describe NFL::Client::Teams::DepthChart do
  describe '#team_depth_chart' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with team parameter' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/teams/depthchart?team=ATL'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'team' => 'ATL'}

        @client.send(:team_depth_chart, options).should eq fixture(path).read
      end
    end
  end
end
