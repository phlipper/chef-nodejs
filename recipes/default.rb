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
    keyserver "keyserver.ubuntu.com"
    action :add
  end

when "debian"

  # backports for initial support
  apt_repository "sid-unstable" do
    uri "http://ftp.us.debian.org/debian"
    distribution "sid"
    components ["main"]
    action :add
  end

  cookbook_file "/etc/apt/preferences.d/sid.pref" do
    source "sid.pref"
  end

  # compatibility for Debian 6
  package "libv8-3.8.9.20"

end

# install primary package
package "nodejs"
