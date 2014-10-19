#
# Cookbook Name:: nodes
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Print every node name matching the search pattern
search("node", "*:*").each do |matching_node|
  log matching_node.to_s
end
