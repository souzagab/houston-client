require "dry-configurable"
require "http"
require "json"

module Houston
  module Client
    # The Agent class is responsible for sending HTTP requests to a specified URL.
    class Agent
      extend Dry::Configurable

      setting :url

      # Sends a GET request to the specified path with optional parameters.
      #
      # @param path [String] The path to send the GET request to.
      # @param params [Hash] Optional parameters to include in the request.
      # @return [Hash] The parsed JSON response.
      def self.get(path, params = {})
        url = "#{base_url}/#{path}"

        response = http.get(url, params)

        parse_response(response)
      end

      # Sends a POST request to the specified path with optional parameters.
      #
      # @param path [String] The path to send the POST request to.
      # @param params [Hash] Optional parameters to include in the request.
      # @return [Hash] The parsed JSON response.
      def self.post(path, params = {})
        url = "#{base_url}/#{path}"

        response = http.post(url, json: params)

        parse_response(response)
      end

      # Retrieves the base URL from the configuration and raises an error if it is not configured.
      #
      # @raise [ConfigurationError] If Houston::Client::Agent.url is not configured.
      # @return [URI] The parsed base URL.
      def self.base_url
        raise ConfigurationError, "Houston::Client::Agent.url is not configured" unless config.url

        URI.parse(config.url)
      end

      # Returns an instance of the HTTP client with the necessary headers and content type.
      #
      # @return [HTTP::Client] The HTTP client instance.
      def self.http
        HTTP
          .headers("User-Agent" => "Houston::Client/#{Houston::Client::VERSION}")
          .accept(:json)
      end

      # Parses the response body as JSON and returns the parsed result.
      #
      # @param response [HTTP::Response] The HTTP response object.
      # @return [Hash] The parsed JSON response.
      def self.parse_response(response)
        JSON.parse(response.body.to_s, symbolize_names: true)
      end
    end
  end
end
