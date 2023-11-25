module Houston
  module Client
    class Spacecraft
      BASE_PATH = "spacecrafts".freeze

      def self.missions(spacecraft_id)
        missions_path = "missions"

        Houston::Client::Agent.get("#{BASE_PATH}/#{spacecraft_id}/#{missions_path}")
      end
    end
  end
end
