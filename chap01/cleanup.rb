# cleanup.rb
file "#{ENV['HOME']}/welcome.txt" do
  action :delete
end

file "#{ENV['HOME']}/stone.txt" do
  action :delete
end
