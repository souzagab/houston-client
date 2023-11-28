module Houston
  module Client
    # Represents a spacecraft in the Houston client library.
    class Spacecraft
      # The path to the spacecrafts endpoint.
      BASE_PATH = "spacecrafts".freeze

      # Retrieves the missions associated with a spacecraft.
      #
      # @param spacecraft_id [String] The ID of the spacecraft.
      # @return [Hash] The missions associated with the spacecraft.
      def self.missions(spacecraft_id)
        missions_path = "missions"

        Houston::Client::Agent.get("#{BASE_PATH}/#{spacecraft_id}/#{missions_path}")
      end
    end
  end
end
