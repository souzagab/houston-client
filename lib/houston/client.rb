require "dry-configurable"

require_relative "version"

module Houston
  class Client
    extend Dry::Configurable

    setting :url
  end
end
