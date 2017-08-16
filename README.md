# Chatbase

Chatbase.com analytics API client written in ruby.

## Installation

Gemfile RubyGems:
```ruby
gem "chatbase"
```

Gemfile Github:
```ruby
gem "booking-ruby", :git => 'https://github.com/RTJ/chatbase.git'
```

Bundler:
```ruby
bundle install chatbase
```

# Setup

Initialize the the gem by setting your username and password.
eg: config/initializer/chatbase.rb

```
  Chatbase.agent_key = 'your-agent-api-key'
  Chatbase.agent_name = 'your-agent-name'
```

## Usage

# Supported endpoints

## Development

```ruby
req_params = {
    type: "user",
    platform: "our-curl-test-platform",
    message: "Hello Chatbase!",
    version: "1.0",
    user_id: "user-00"
}

response = Chatbase::Message.new.send_message(req_params)

=> response.body

{"message_id": "1048441442", "status": 200}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/RTJ/chatbase. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Chatbase project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/RTJ/chatbase/blob/master/CODE_OF_CONDUCT.md).
