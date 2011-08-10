require 'helper'

describe NFL::Client::Draft::Tracker do
  before(:each) do
    @client = NFL::Client.new
  end

  describe '#draft_tracker' do
    describe 'with year parameter' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/draft/2011/tracker'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'year' => '2011'}

        @client.send(:draft_tracker, options).should eq fixture(path).read
      end
    end
  end

  describe '#draft_tracker_path' do
    describe 'with year parameter' do
      it 'returns the correct path' do
        options = {'year' => '2011'}
        @client.send(:draft_tracker_path, options).should eq '/draft/2011/tracker'
      end
    end
  end
end
