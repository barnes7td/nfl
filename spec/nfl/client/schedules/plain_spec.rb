require 'helper'

describe NFL::Client::Schedules::Plain do
  describe '#schedule_plain' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe '#schedule_plain' do
      describe 'with seasonType and season parameters' do
        it 'gets the raw HTML' do
          path = 'www.nfl.com/schedules?seasonType=REG&season=2010'

          stub_request(:get, path) \
            .to_return(:status => 200, :body => fixture(path).read)

          options = {'seasonType' => 'REG', 'season' => '2010'}

          @client.send(:schedule_plain, options).should eq fixture(path).read
        end
      end
    end

  end
end
