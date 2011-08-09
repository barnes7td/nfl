require 'helper'

describe NFL::Client::Games::GameBook do
  before(:each) do
    @client = NFL::Client.new
  end

  describe '#game_book' do
    describe 'with gameKey and homeTeam parameters' do
      it 'gets the raw PDF' do
        path = 'www.nfl.com/liveupdate/gamecenter/54863/NO_Gamebook.pdf'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'gameKey' => '54863', 'homeTeam' => 'NO'}

        @client.send(:game_book, options).should eq fixture(path).read
      end
    end
  end

  describe '#game_book_path' do
    describe 'with gameKey and homeTeam parameters' do
      it 'returns the correct path' do
        options = {'gameKey' => '54863', 'homeTeam' => 'NO'}
        @client.send(:game_book_path, options).should eq '/liveupdate/gamecenter/54863/NO_Gamebook.pdf'
      end
    end
  end
end
