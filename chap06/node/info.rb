log "IP Address: #{node['ipaddress']}"
log "MAC Address: #{node['macaddress']}"
log "OS Platform: #{node['platform']} #{node['platform_version']}"
log "Running on a #{node['virtualization']['system']} \
#{node['virtualization']['role']}"
log "Hostname: #{node['hostname']}"

