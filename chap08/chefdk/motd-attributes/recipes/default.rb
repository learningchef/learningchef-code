#
# Cookbook Name:: motd-attributes
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#

node.default['ipaddress'] = '1.1.1.1'
node.default['company'] = 'My Company'
node.default['motd-attributes']['message'] = "It's a wonderful day today!"

include_recipe 'motd-attributes::message'

template '/etc/motd' do
  source 'motd.erb'
  mode '0644'
end
