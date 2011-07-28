module NFL
  class Client < API
    Dir[File.expand_path('../client/*.rb', __FILE__)].each {|f| require f }

    alias :api_endpoint :endpoint
  end
end
