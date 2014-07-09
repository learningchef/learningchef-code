#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#

cookbook_file "/etc/motd" do
  source "motd"
  mode "0644"
end
