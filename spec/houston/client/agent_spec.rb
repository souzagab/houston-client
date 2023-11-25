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

  describe ".base_url" do
    context "when the URL is not configured" do

      before { described_class.configure { |config| config.url = nil } }

      it "raises a ConfigurationError" do
        expect { described_class.base_url }.to raise_error(Houston::Client::ConfigurationError)
      end
    end

    context "when the URL is configured" do
      let(:url) { "https://example.com" }

      before { described_class.configure { |config| config.url = url } }

      it "returns the configured URL" do
        expect(described_class.base_url).to eq(url)
      end
    end
  end
end
