require_relative "client/version"
require_relative "client/agent"
require_relative "client/mission"
require_relative "client/spacecraft"

module Houston
  module Client
    class ConfigurationError < StandardError; end
  end
end
