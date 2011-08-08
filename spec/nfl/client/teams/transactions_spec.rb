require 'helper'

describe NFL::Client::Teams::Transactions do
  describe '#team_transactions' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe 'with team parameter' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/teams/transactions?team=ATL'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        options = {'team' => 'ATL'}

        @client.send(:team_transactions, options).should eq fixture(path).read
      end
    end
  end
end
