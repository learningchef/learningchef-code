#
# Cookbook Name:: chef-server
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#

package_url = node['chef-server']['url']
package_name = ::File.basename(package_url)
log package_name
package_local_path = "#{Chef::Config[:file_cache_path]}/#{package_name}"
log package_local_path

# omnibus_package is remote (ie a URI) let's download it
remote_file package_local_path do
  source package_url
  action :create_if_missing
end

package package_name do
  source package_local_path
  notifies :run, 'execute[reconfigure-chef-server]'
end

# reconfigure the installation
execute 'reconfigure-chef-server' do
  command 'chef-server-ctl reconfigure'
  action :nothing
end
