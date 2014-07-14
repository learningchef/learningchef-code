#
# Cookbook Name:: chef-server
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#

omnibus_package = "http://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chef-server-11.1.3-1.el6.x86_64.rpm"
package_name = ::File.basename(omnibus_package)
package_local_path = "#{Chef::Config[:file_cache_path]}/#{package_name}"

remote_file package_local_path do
    source omnibus_package
    action :create_if_missing
end

#package "/learningchef/chef-server-11.1.3-1.el6.x86_64.rpm"

