require "dry-configurable"

require_relative "agent"
require_relative "mission"

module Houston
  class Client
    extend Dry::Configurable
    extend Agent

    setting :url
  end
end
