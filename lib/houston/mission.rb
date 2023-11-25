module Houston
  class Mission
    MISSIONS_PATH = "missions".freeze

    def self.create(mission)
      client.post(MISSIONS_PATH, mission)
    end

    def self.all
      client.get(MISSIONS_PATH)
    end

    def self.client
      Houston::Client
    end
  end
end
