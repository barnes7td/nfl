require 'helper'

describe NFL::Client::Games::PlayByPlay do
  describe '#game_play_by_play' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with gameId parameter' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/widget/gc/tabs/cat-post-playbyplay?gameId=2010090900'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'gameId' => '2010090900'}

        @client.send(:game_play_by_play, options).should eq fixture(path).read
      end
    end
  end
end
