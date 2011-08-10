require 'helper'

describe NFL::Client::Players::SituationalStats do
  describe '#player_situational_stats' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with id parameter' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/players/situationalstats?id=PET260705'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'id' => 'PET260705'}

        @client.send(:player_situational_stats, options).should eq fixture(path).read
      end
    end
  end
end
