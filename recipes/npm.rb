#
# Cookbook Name:: nodejs
# Recipe:: npm
#


if node["nodejs"]["legacy"]

  include_recipe "nodejs"

  apt_repository "chris-lea-node.js-legacy" do
    uri "http://ppa.launchpad.net/chris-lea/node.js-legacy/ubuntu"
    distribution node["lsb"]["codename"]
    components ["main"]
    key "C7917B12"
    keyserver "keyserver.ubuntu.com"
    action :add
  end

  package "npm"

end
