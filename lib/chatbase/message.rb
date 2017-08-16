module Chatbase
	class Message
   	def initialize
      @http_service = HttpService.new
    end

    def http_service
      @http_service
    end

    def send_message(request_parameters)
      http_service.request_post(request_parameters)
    end
	end
end