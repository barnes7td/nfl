require 'helper'

describe NFL::Client do
  before(:each) do
    @client = NFL::Client.new(:endpoint => 'http://example.com')
  end

  it 'connects to the endpoint configuration' do
    endpoint = URI.parse(@client.api_endpoint).to_s
    connection = @client.send(:connection).build_url(nil).to_s
    connection.should == endpoint
  end
end
