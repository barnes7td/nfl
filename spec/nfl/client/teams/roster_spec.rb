require 'helper'

describe NFL::Client::Teams::Roster do
  describe '#team_roster' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with team parameter' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/teams/roster?team=ATL'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'team' => 'ATL'}

        @client.send(:team_roster, options).should eq fixture(path).read
      end
    end
  end
end
