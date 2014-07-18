current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "<username>"
client_key               "#{current_dir}/<username>.pem"
validation_client_name   "chef-validator"
validation_key           "#{current_dir}/chef-validator.pem"
chef_server_url          "https://192.168.33.34:443"
cache_type               "BasicFile"
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
