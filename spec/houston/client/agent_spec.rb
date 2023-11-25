require "spec_helper"

RSpec.describe Houston::Client::Agent do
  describe "configurations" do
    describe ".url" do
      let(:url) { "https://example.com" }

      before { described_class.configure { |config| config.url = url } }

      it "returns the configured URL" do
        expect(described_class.config.url).to eq(url)
      end
    end
  end
end
