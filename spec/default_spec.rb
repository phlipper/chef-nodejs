require "spec_helper"

describe "nodejs::default" do
  describe "when `engine` is `node`" do
    describe "ubuntu platform" do
      let(:chef_run) do
        ChefSpec::SoloRunner.new do |node|
          node.set["nodejs"]["engine"] = "node"
        end.converge(described_recipe)
      end

      it "installs the `nodejs` package" do
        expect(chef_run).to install_package "nodejs"
      end
    end

    describe "debian platform" do
      let(:chef_run) do
        env_options = { platform: "debian", version: "7.8" }
        ChefSpec::SoloRunner.new(env_options) do |node|
          node.set["nodejs"]["engine"] = "node"
        end.converge(described_recipe)
      end

      it "installs the `nodejs` package" do
        expect(chef_run).to install_package "nodejs"
      end
    end
  end

  describe "when `engine` is `iojs`" do
    describe "ubuntu platform" do
      let(:chef_run) do
        ChefSpec::SoloRunner.new do |node|
          node.set["nodejs"]["engine"] = "iojs"
        end.converge(described_recipe)
      end

      it "installs the `iojs` package" do
        expect(chef_run).to install_package "iojs"
      end
    end

    describe "debian platform" do
      let(:chef_run) do
        env_options = { platform: "debian", version: "7.8" }
        ChefSpec::SoloRunner.new(env_options) do |node|
          node.set["nodejs"]["engine"] = "iojs"
        end.converge(described_recipe)
      end

      it "installs the `iojs` package" do
        expect(chef_run).to install_package "iojs"
      end
    end
  end
end
