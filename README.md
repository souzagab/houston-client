# Houston::Client

Api Wrapper for Houston api

## Installation

This gem isn´t published yet, so you can install it by referencing the github repository.

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

This gem is documented using [YARD](https://yardoc.org/). You can generate a local copy of the documentation by running `yard` in the root of the project.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

Check out the shortcuts in the `Makefile` for common development tasks.

```bash
  make list
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/souzagab/houston-client.
