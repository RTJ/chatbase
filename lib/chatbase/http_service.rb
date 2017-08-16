module Chatbase
  class HttpService
    attr_accessor :agent_key, :agent_name

    def initialize(agent_key: nil)
      @agent_key = agent_key || Chatbase.agent_key
      @agent_name = agent_name || Chatbase.agent_name
    end

    def connection
      @connection ||= begin
        Faraday.new(:url => 'https://chatbase-area120.appspot.com/api/message') do |faraday|
          faraday.response :json, :content_type => /\bjson$/
          faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
        end
      end
    end

    def request_post(data)
      connection.post do |req|
        req.headers['Content-Type'] = 'application/json'
        req.body = {'api_key': agent_key, 'agent_name': agent_name}.merge(data).to_json
      end
    end

  end
end
