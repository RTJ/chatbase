# Chatbase

Chatbase.com analytics API client written in ruby.

## Installation

Gemfile RubyGems:
```ruby
gem "chatbase"
```

Gemfile Github:
```ruby
gem "chatbase", :git => 'https://github.com/RTJ/chatbase.git'
```

Bundler:
```ruby
bundle install chatbase
```

# Setup

Initialize the the gem by setting your Agent Key (agent_key).

eg: config/initializers/chatbase.rb

```
  Chatbase.agent_key = 'your-agent-api-key'
```

## Usage


### Generic Message API
```ruby
req_params = {
    platform: "ruby-test",
    message: "Hello Chatbase from agent!",
    version: "1.0",
    type: "agent",
    user_id: "agent-01",
    time_stamp: DateTime.now.strftime('%Q'),
}

response = Chatbase::Message.new.send_message(req_params)

=> response.body

{"message_id": "1048441442", "status": 200}
```

### Send generic multiple messages at once API

```ruby
chat_params = {
    messages:[
        {
            platform: "ruby",
            message: "Hello Chatbase message1!",
            version: "1.0",
            type: "agent",
            user_id: "agent-01",
            time_stamp: DateTime.now.strftime('%Q'),
        },
        {
            platform: "ruby",
            message: "Hello Chatbase message2!",
            version: "1.0",
            type: "agent",
            user_id: "agent-01",
            time_stamp: DateTime.now.strftime('%Q'),
        }
    ]
}

response = Chatbase::Message.new.send_messages(chat_params) # messages not message

=> response.body

{"all_succeeded"=>true, "responses"=>[{"message_id"=>1048692001, "status"=>"success"}, {"message_id"=>1048692002, "status"=>"success"}], "status"=>200} 
```

### Send facebook Message API
```ruby
    fb_params = {
        sender: {id: '1520833104112'},
        recipient: {id: '528195999812'},
        timestamp: DateTime.now.strftime('%Q'),
        message: {
            mid: "mid.1457764197618:41d102a3e1ae206a381",
            text: "hey test chatbot!"
        },
        chatbase_fields: {
            intent: "say-hi-intent",
            version: "1.01",
            not_handled: false,
            feedback: false
        }
    }

response = Chatbase::Message.new.send_fbmessage(fb_params)

=> response.body

{"message_id"=>"1052280268", "status"=>200}
```

### Other available options:
```ruby
# Send generic Chatbase message
Chatbase::Message.new.send_message(params)

# Send multiple generic messages at once
Chatbase::Message.new.send_messages(params)

# Update Chatbase specific fields per message
Chatbase::Message.new.update_message(params)

# Send Chatbase the agent messages and Facebook JSON responses
Chatbase::Message.new.send_fbmessage(params)

# Sending multiple Facebook messages at once
Chatbase::Message.new.send_fbmessages(params)

# Send Chatbase messages received from Facebook
Chatbase::Message.new.send_received_fbmessage(params)

# Sending multiple Facebook received messages at once
Chatbase::Message.new.send_received_fbmessages(params)

# Update Chatbase Facebook specific fields per message
Chatbase::Message.new.update_fbmessage(params)

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/RTJ/chatbase. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Chatbase project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/RTJ/chatbase/blob/master/CODE_OF_CONDUCT.md).
