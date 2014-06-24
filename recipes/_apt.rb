#
# Cookbook Name:: nodejs
# Recipe:: _apt
#

include_recipe "apt"

case node["platform"]
when "ubuntu"
  repo_name = "node.js"
  repo_name << "-legacy" if node["nodejs"]["legacy"]

  # default repository
  apt_repository "chris-lea-#{repo_name}" do
    uri "http://ppa.launchpad.net/chris-lea/#{repo_name}/ubuntu"
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
