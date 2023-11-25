require "http"


module Houston
  module Agent
    extend Dry::Configurable

    def get(path, params = {})
      url = "#{base_url}/#{path}"

      http.get(url, params:)
    end

    def post(path, body = {})
      url = "#{base_url}/#{path}"

      http.post(url, body:)
    end

    private

    def base_url
      URI(Houston::Client.config.url)
    end

    def http
      HTTP.headers("User-Agent" => "MyApp/1.0.0").accept(:json)
    end
  end
end
