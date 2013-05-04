require 'faraday'
require 'faraday_middleware'

module DPLibrary
  module Connection
    def connection
      @connection = begin
        Faraday.new(:url => DPLibrary::Configuration::BASE_URL, :params => { :api_key => DPLibrary.api_key } ) do |c|
          c.request :url_encoded
          c.request :json
          c.response :json
          c.adapter Faraday.default_adapter
        end
      end
    end
  end
end
