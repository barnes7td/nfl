require 'helper'

describe NFL::Client::Draft::FullDraft do
  before(:each) do
    @client = NFL::Client.new
  end

  describe '#draft_full_draft' do
    describe 'with year parameter' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/draft/history/fulldraft?season=2011'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'season' => '2011'}

        @client.send(:draft_full_draft, options).should eq fixture(path).read
      end
    end
  end
end
