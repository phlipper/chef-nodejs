#
# Cookbook Name:: nodejs
# Recipe:: default
#

# configure the apt repository
include_recipe "nodejs::_apt"

# install primary package
package "nodejs"
