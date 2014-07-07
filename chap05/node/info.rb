# info.rb - prints out node info
log "IP Address: #{node['ipaddress']}"
log "Hostname: #{node['hostname']}"
log "Users: #{node['etc']['passwd'].keys}"
