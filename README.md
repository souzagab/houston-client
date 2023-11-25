# Houston::Client

Api Wrapper for Houston api

## Installation

Add to the application's Gemfile by adding:

```ruby

  gem "houston-client", github: "souzagab/houston-client"

```

And you can configure the gem by adding an initializer to your Rails application:

```ruby

  # config/initializers/houston_client.rb

  Houston::Client::Agent.configure do |config|
    config.url = "https://houston.api.com"
  end

```

## Usage


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/souzagab/houston-client.
