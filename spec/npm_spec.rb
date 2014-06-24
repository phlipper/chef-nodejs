require "spec_helper"

describe "nodejs::npm" do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end

  it "does nothing by default" do
    expect(chef_run).to_not include_recipe "nodejs::_apt"
    expect(chef_run).to_not install_package "nodejs"
    expect(chef_run).to_not install_package "npm"
    expect(chef_run).to_not install_package "nodejs-legacy"
  end

  describe "ubuntu platform" do
    let(:chef_run) do
      ChefSpec::Runner.new do |node|
        node.set["nodejs"]["legacy"] = true
      end.converge(described_recipe)
    end

    it "includes the `_apt` recipe" do
      expect(chef_run).to include_recipe "nodejs::_apt"
    end

    it "installs the `nodejs` and `npm` packages" do
      expect(chef_run).to install_package "nodejs"
      expect(chef_run).to install_package "npm"
    end
  end

  describe "debian platform" do
    let(:chef_run) do
      env_options = { platform: "debian", version: "7.4" }
      ChefSpec::Runner.new(env_options) do |node|
        node.set["nodejs"]["legacy"] = true
      end.converge(described_recipe)
    end

    it "includes the `_apt` recipe" do
      expect(chef_run).to include_recipe "nodejs::_apt"
    end

    it "installs the `nodejs-legacy` package" do
      expect(chef_run).to install_package "nodejs-legacy"
    end
  end
end
