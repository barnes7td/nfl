require 'helper'

describe NFL::Client::Games::LiveUpdate do
  before(:each) do
    @client = NFL::Client.new
  end

  describe '#game_live_update_batch' do
    describe 'with gameId parameter' do
      it 'gets the raw JSON' do
        path = 'www.nfl.com/liveupdate/game-center/2010090900/2010090900_gtd.json'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'gameId' => '2010090900'}

        @client.send(:game_live_update_batch, options).should eq fixture(path).read
      end
    end
  end

  describe '#game_live_update_batch_path' do
    describe 'with gameId parameter' do
      it 'returns the correct path' do
        options = {'gameId' => '2010090900'}
        @client.send(:game_live_update_batch_path, options).should eq '/liveupdate/game-center/2010090900/2010090900_gtd.json'
      end
    end
  end

  describe '#game_live_update_increment' do
    describe 'with gameKey and number parameters' do
      it 'gets the raw JSON' do
        path = 'www.nfl.com/liveupdate/gamecenter/54863/54863_1.json'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'gameKey' => '54863', 'number' => '1'}

        @client.send(:game_live_update_increment, options).should eq fixture(path).read
      end
    end
  end

  describe '#game_live_update_increment_path' do
    describe 'with gameKey and number parameters' do
      it 'returns the correct path' do
        options = {'gameKey' => '54863', 'number' => '1'}
        @client.send(:game_live_update_increment_path, options).should eq '/liveupdate/gamecenter/54863/54863_1.json'
      end
    end
  end
end
