require 'faraday_middleware'
require 'faraday/response/raise_http_4xx'
require 'faraday/response/raise_http_5xx'

module NFL
  module Connection
    private

    def connection
      options = {
        :headers => {'User-Agent' => user_agent},
        :proxy => proxy,
        :ssl => {:verify => false},
        :url => api_endpoint,
      }

      Faraday.new(options) do |builder|
        builder.use Faraday::Request::UrlEncoded
        builder.use Faraday::Response::RaiseHttp4xx
        builder.use Faraday::Response::RaiseHttp5xx
        builder.adapter(adapter)
      end
    end
  end
end
