module Chatbase
  class HttpService

    def connection
      @connection ||= begin
        Faraday.new(:url => 'https://chatbase.com/') do |faraday|
          faraday.response :json, :content_type => /\bjson$/
          faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
        end
      end
    end

    def request_post(url, data)
      connection.post do |req|
        req.url url
        req.headers['Content-Type'] = 'application/json'
        req.body = data.to_json
      end
    end

  end
end
