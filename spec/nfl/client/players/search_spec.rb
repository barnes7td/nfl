require 'helper'

describe NFL::Client::Players::Search do
  describe '#player_search' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with category and filter and playerType parameters' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/players/search?category=lastName&filter=A&playerType=current'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'category' => 'lastName', 'filter' => 'A', 'playerType' => 'current'}

        @client.send(:player_search, options).should eq fixture(path).read
      end
    end
  end
end
