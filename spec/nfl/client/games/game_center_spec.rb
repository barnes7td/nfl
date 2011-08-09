require 'helper'

describe NFL::Client::Games::GameCenter do
  before(:each) do
    @client = NFL::Client.new
  end

  describe '#game_center' do
    describe 'with gameId, gameYear, gameSeasonType, and gameWeek parameters' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/gamecenter/2010090900/2010/REG1'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'gameId' => '2010090900', 'gameYear' => '2010', 'gameSeasonType' => 'REG', 'gameWeek' => '1'}

        @client.send(:game_center, options).should eq fixture(path).read
      end
    end
  end

  describe '#game_center_path' do
    describe 'with gameId, gameYear, gameSeasonType, and gameWeek parameters' do
      it 'returns the correct path' do
        options = {'gameId' => '2010090900', 'gameYear' => '2010', 'gameSeasonType' => 'REG', 'gameWeek' => '1'}
        @client.send(:game_center_path, options).should eq '/gamecenter/2010090900/2010/REG1'
      end
    end
  end
end
