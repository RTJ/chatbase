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
      http_service.request_post("/api/message", {api_key: @agent_key}.merge(request_parameters))
    end

    def send_messages(request_parameters)
      request_parameters[:messages].each do |message|
        message.merge!({'api_key': @agent_key})
      end
      http_service.request_post("/api/messages", request_parameters)
    end

    def update_message(request_parameters)
      http_service.request_post("/api/message/update", request_parameters)
    end

    def send_fbmessage(request_parameters)
      http_service.request_post("/api/facebook/send_message?api_key=#{@agent_key}", request_parameters)
    end
    
    def send_fbmessages(request_parameters)
      http_service.request_post("/api/facebook/send_message_batch?api_key=#{@agent_key}", request_parameters)
    end

    def send_received_fbmessage(request_parameters)
      http_service.request_post("/api/facebook/message_received?api_key=#{@agent_key}", request_parameters)
    end
    
    def send_received_fbmessages(request_parameters)
      http_service.request_post("/api/facebook/message_received_batch?api_key=#{@agent_key}", request_parameters)
    end

    def update_fbmessage(request_parameters, message_id)
      http_service.request_post("/api/facebook/send_message?api_key=#{@agent_key}&message_id=#{@message_id}", request_parameters)
    end
	end
end