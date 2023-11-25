require "http"
require "json"

module Houston
  module Agent
    extend Dry::Configurable

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
      raise Houston::ConfigurationError, "Houston::Client.config.url is not set" unless Houston::Client.config.url

      URI(Houston::Client.config.url)
    end

    def http
      HTTP
        .headers("User-Agent" => "MyApp/1.0.0")
        .accept(:json)
    end

    def parse_response(response)
      JSON.parse(response.body.to_s, symbolize_names: true)
    end
  end
end
