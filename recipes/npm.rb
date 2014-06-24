#
# Cookbook Name:: nodejs
# Recipe:: npm
#

return unless node["nodejs"]["legacy"]

include_recipe "nodejs::_apt"

case node["platform"]
when "ubuntu"
  package "nodejs"
  package "npm"
when "debian"
  package "nodejs-legacy"
end
