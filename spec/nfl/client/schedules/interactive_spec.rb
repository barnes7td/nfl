require 'helper'

describe NFL::Client::Schedules::Interactive do
  describe '#schedule_interactive' do
    before(:each) do
      @client = NFL::Client.new
    end

    describe '#schedule_interactive' do
      describe 'with year parameter' do
        it 'gets the raw XML' do
          path = 'www.nfl.com/static/content/schedule-release-xml/2011/schedule-release.xml'

          stub_request(:get, path) \
            .to_return(:status => 200, :body => fixture(path).read)

          options = {'year' => '2011'}

          @client.send(:schedule_interactive, options).should eq fixture(path).read
        end
      end
    end

    describe '#schedule_interactive_path' do
      describe 'with year parameter' do
        it 'returns the correct path' do
          path = '/static/content/schedule-release-xml/2011/schedule-release.xml'
          options = {'year' => '2011'}
          @client.send(:schedule_interactive_path, options).should eq path
        end
      end
    end

  end
end
