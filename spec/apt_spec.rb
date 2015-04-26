require "spec_helper"

describe "nodejs::_apt" do
  describe "ubuntu platform" do
    let(:chef_run) do
      ChefSpec::SoloRunner.new.converge(described_recipe)
    end

    it "includes the `apt` recipe" do
      expect(chef_run).to include_recipe "apt"
    end

    it "cleans up legacy `chris-lea` repositories" do
      expect(chef_run).to remove_apt_repository "chris-lea-node.js"
      expect(chef_run).to remove_apt_repository "chris-lea-node.js-legacy"
    end

    it "configures the apt repository" do
      expect(chef_run).to add_apt_repository "nodesource"
    end
  end

  describe "debian platform" do
    let(:chef_run) do
      env_options = { platform: "debian", version: "7.8" }
      ChefSpec::SoloRunner.new(env_options).converge(described_recipe)
    end

    it "includes the `apt` recipe" do
      expect(chef_run).to include_recipe "apt"
    end

    it "configures the apt repository" do
      expect(chef_run).to add_apt_repository "nodesource"
    end
  end
end
