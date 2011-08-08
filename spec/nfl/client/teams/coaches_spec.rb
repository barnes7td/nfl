require 'helper'

describe NFL::Client::Teams::Coaches do
  describe '#team_coaches' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with coaType and team parameters' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/teams/coaches?coaType=head&team=ATL'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'coaType' => 'head', 'team' => 'ATL'}

        @client.send(:team_coaches, options).should eq fixture(path).read
      end
    end
  end
end
