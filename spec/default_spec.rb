require "spec_helper"

describe "nodejs::default" do
  describe "ubuntu platform" do
    let(:chef_run) do
      ChefSpec::SoloRunner.new.converge(described_recipe)
    end

    it "installs the `nodejs` package" do
      expect(chef_run).to install_package "nodejs"
    end
  end

  describe "debian platform" do
    let(:chef_run) do
      env_options = { platform: "debian", version: "7.4" }
      ChefSpec::SoloRunner.new(env_options).converge(described_recipe)
    end

    it "installs the `nodejs` package" do
      expect(chef_run).to install_package "nodejs"
    end
  end
end
