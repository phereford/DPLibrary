module DPLibrary
  module Request
    include DPLibrary::Connection

    def get(path, options={})
      request(:get, path, options)
    end

    private
    def request(request_type, path, options)
      response = connection.send(request_type, path) do |request|
        options.each{ |k,v| request.params[k.to_s] = v }
      end

      response.body.to_json
    end
  end
end
