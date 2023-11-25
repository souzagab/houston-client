require "dry-configurable"

require_relative "agent"

module Houston
  class Client
    extend Dry::Configurable
    extend Agent

    setting :url
  end
end
