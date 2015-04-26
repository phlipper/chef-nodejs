#
# Cookbook Name:: nodejs
# Recipe:: _apt
#

include_recipe "apt"

# remove any potential legacy repository setup from earlier cookbook versions
%w[chris-lea-node.js chris-lea-node.js-legacy].each do |legacy_repo|
  apt_repository legacy_repo do
    action :remove
  end
end

# use proper `arch` label
repo_arch = node["kernel"]["machine"] == "x86_64" ? "amd64" : "i386"

# create path name like `node_0.12` or `iojs_1.x`
repo_path = "#{node["nodejs"]["engine"]}_#{node["nodejs"]["version"]}"

apt_repository "nodesource" do
  arch repo_arch
  uri "https://deb.nodesource.com/#{repo_path}"
  distribution node["lsb"]["codename"]
  components ["main"]
  key "https://deb.nodesource.com/gpgkey/nodesource.gpg.key"
end
