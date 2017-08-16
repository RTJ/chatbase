module Chatbase
	class Message
   	def initialize
      @http_service = HttpService.new
    end

    def http_service
      @http_service
    end
	end
end