require 'helper'

describe NFL::Client::Players::GameLogs do
  describe '#player_game_logs' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with id parameter' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/players/gamelogs?id=PET260705'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'id' => 'PET260705'}

        @client.send(:player_game_logs, options).should eq fixture(path).read
      end
    end
  end
end
