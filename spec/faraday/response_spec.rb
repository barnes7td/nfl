require 'helper'

describe Faraday::Response do
  before do
    @client = NFL::Client.new(:endpoint => 'http://example.com')
  end

  {
    400 => NFL::BadRequest,
    401 => NFL::Unauthorized,
    403 => NFL::Forbidden,
    404 => NFL::NotFound,
    406 => NFL::NotAcceptable,
    500 => NFL::InternalServerError,
    502 => NFL::BadGateway,
    503 => NFL::ServiceUnavailable,
  }.each do |status, exception|
    context "when HTTP status is #{status}" do

      before do 
        stub_request(:get, 'http://example.com/error_inducing_action') \
          .to_return(:status => status)
      end

      it "raises #{exception.name} error" do
        proc { @client.get('error_inducing_action') }.should raise_error(exception)
      end
    end
  end
end
