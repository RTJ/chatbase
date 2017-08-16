# Chatbase

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/chatbase`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Gemfile RubyGems:
```ruby
gem "chatbase"
```

Gemfile github:
```ruby
gem "booking-ruby", :git => 'https://github.com/RTJ/chatbase.git'
```

Bundler:
```ruby
bundle install chatbase
```

# Setup

Initialize the the gem by setting your username and password:

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

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/RTJ/chatbase. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Chatbase project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/RTJ/chatbase/blob/master/CODE_OF_CONDUCT.md).
