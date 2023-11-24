require "dry-configurable"

module Houston
  class Client
    extend Dry::Configurable

    setting :url
  end
end
