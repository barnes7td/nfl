require 'helper'

describe NFL::Client::Standings do
  describe '#standings' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with no parameters' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/standings'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        @client.send(:standings).should eq fixture(path).read
      end
    end

    describe 'with category, season, and split parameters' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/standings?category=div&season=2011-REG&split=Overall'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'category' => 'div', 'season' => '2011-REG', 'split' => 'Overall'}

        @client.send(:standings, options).should eq fixture(path).read
      end
    end
  end
end
