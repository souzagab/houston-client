require_relative "client/version"
require_relative "client/agent"
require_relative "client/mission"
require_relative "client/spacecraft"

module Houston
  # The Houston module provides functionality for the Houston client.
  module Client
    # Raised when there is a configuration error in the Houston client.
    class ConfigurationError < StandardError; end
  end
end
