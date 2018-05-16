#
# Cookbook Name:: apt-upgrade-once
# Recipe:: default
#
# Copyright (C) 2014 Simon Detheridge
#

execute "apt-update" do
  command "apt-get -y update"
  action :nothing
end

execute "apt-upgrade" do
  command 'DEBIAN_FRONTEND=noninteractive apt-get -fuy -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade'
  action :nothing
end

file node['apt-upgrade-once']['statusfile'] do
  owner 'root'
  group 'root'
  mode '0644'
  action :create
  notifies :run, 'execute[apt-update]', :immediately
  notifies :run, 'execute[apt-upgrade]', :immediately
end
