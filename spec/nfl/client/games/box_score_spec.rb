require 'helper'

describe NFL::Client::Games::BoxScore do
  describe '#game_box_score' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with gameId parameter' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/widget/gc/tabs/cat-post-boxscore?gameId=2010090900'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'gameId' => '2010090900'}

        @client.send(:game_box_score, options).should eq fixture(path).read
      end
    end
  end
end
