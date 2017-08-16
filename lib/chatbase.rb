require 'faraday'
require 'json'

require 'chatbase/version'
require 'chatbase/message'
require 'chatbase/http_service'

module Chatbase
  class << self
    attr_accessor :agent_key
  end

  self.agent_key ||= ENV['CHATBASE_AGENT_API_KEY']
end
