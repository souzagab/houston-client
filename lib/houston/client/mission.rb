module Houston
  module Client
    class Mission
      MISSIONS_PATH = "missions".freeze

      def self.create(mission)
        Houston::Client::Agent.post(MISSIONS_PATH, mission)
      end

      def self.all
        Houston::Client::Agent.get(MISSIONS_PATH)
      end
    end
  end
end
