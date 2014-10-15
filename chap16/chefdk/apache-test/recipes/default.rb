#
# Cookbook Name:: apache-test
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

package "httpd"

service "httpd" do
  action [ :enable, :start ]
end

template "/var/www/html/index.html" do
  source 'index.html.erb'
  mode '0644'
end
