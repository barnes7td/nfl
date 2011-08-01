require 'helper'

describe NFL::Client::Scores do
  describe '#scores' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with no parameters' do
      it 'gets the raw XML' do
        path = 'www.nfl.com/liveupdate/scorestrip/ss.xml'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        @client.send(:scores).should eq fixture(path).read
      end
    end

    describe 'with season, segment, and week' do
      it 'gets the raw XML' do
        path = 'www.nfl.com/ajax/scorestrip?season=2010&seasonType=REG&week=1'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'season' => 2010, 'seasonType' => 'REG', 'week' => 1}

        @client.send(:scores, options).should eq fixture(path).read
      end
    end
  end
end
