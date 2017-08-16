require 'faraday'
require 'json'

require 'chatbase/version'
require 'chatbase/message'
require 'chatbase/http_service'

module Chatbase
  class << self
    attr_accessor :agent_key, :agent_name
  end

  self.agent_key ||= ENV['CHATBASE_AGENT_API_KEY']
  self.agent_name ||= ENV['CHATBASE_AGENT_NAME']
end
