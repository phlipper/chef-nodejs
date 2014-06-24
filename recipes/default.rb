#
# Cookbook Name:: nodejs
# Recipe:: default
#

include_recipe "apt"

case node["platform"]
when "ubuntu"
  apt_repository "chris-lea-node.js" do
    uri "http://ppa.launchpad.net/chris-lea/node.js/ubuntu"
    distribution node["lsb"]["codename"]
    components ["main"]
    key "C7917B12"
    keyserver "hkp://keyserver.ubuntu.com:80"
  end
when "debian"
  # backports for initial support
  apt_repository "wheezy-backports" do
    uri "http://ftp.us.debian.org/debian"
    distribution "wheezy-backports"
    components ["main"]
  end
end

# install primary package
package "nodejs"
