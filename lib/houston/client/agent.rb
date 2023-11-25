require "dry-configurable"
require "http"
require "json"

module Houston
  module Client
    class Agent
      extend Dry::Configurable

      setting :url

      class << self
        def get(path, params = {})
          url = "#{base_url}/#{path}"

          response = http.get(url, params)

          parse_response(response)
        end

        def post(path, params = {})
          url = "#{base_url}/#{path}"

          response = http.post(url, json: params)

          parse_response(response)
        end

        private

        def base_url
          raise ConfigurationError, "Houston::Client::Agent.url is not configured" unless config.url

          URI.parse(config.url)
        end

        def http
          HTTP
            .headers("User-Agent" => "Houston::Client/#{Houston::Client::VERSION}")
            .accept(:json)
        end

        def parse_response(response)
          JSON.parse(response.body.to_s, symbolize_names: true)
        end
      end
    end
  end
end
