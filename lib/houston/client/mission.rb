module Houston
  module Client
    # Represents a mission in the Houston client.
    class Mission
      # The path to the missions endpoint.
      MISSIONS_PATH = "missions".freeze

      # Creates a new mission.
      #
      # @param mission [Hash] The mission data.
      # @return [Object] The created mission object.
      def self.create(mission)
        Houston::Client::Agent.post(MISSIONS_PATH, mission)
      end

      # Retrieves all missions.
      #
      # @return [Array] An array of missions.
      def self.all
        Houston::Client::Agent.get(MISSIONS_PATH)
      end
    end
  end
end
