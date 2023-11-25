require "dry-configurable"

module Houston
  module Client
    class Agent
      extend Dry::Configurable

      setting :url

      def self.base_url
        raise ConfigurationError, "Houston::Client::Agent.url is not configured" unless config.url

        config.url
      end
    end
  end
end
