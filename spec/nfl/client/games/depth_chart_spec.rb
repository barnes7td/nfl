require 'helper'

describe NFL::Client::Games::DepthChart do
  describe '#game_depth_chart' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with gameId parameter' do
      it 'gets the raw XML' do
        path = 'www.nfl.com/feed/gamedepthchartfeed?gameId=2010090900'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'gameId' => '2010090900'}

        @client.send(:game_depth_chart, options).should eq fixture(path).read
      end
    end
  end
end
