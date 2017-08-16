module Chatbase
	class Message
    attr_accessor :agent_key

    def initialize(agent_key: nil)
      @agent_key = agent_key || Chatbase.agent_key
      @http_service = HttpService.new
    end

    def http_service
      @http_service
    end

    def send_message(request_parameters)
      http_service.request_post("/api/message", {'api_key': @agent_key}.merge(request_parameters))
    end

    def send_fbmessage(request_parameters)
      http_service.request_post("/api/facebook/message_received?api_key=#{@agent_key}", request_parameters)
    end

	end
end