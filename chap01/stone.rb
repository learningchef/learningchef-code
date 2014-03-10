# stone.rb - creates stone.txt in the user's home directory
file "#{ENV['HOME']}/stone.txt" do
  content "Written in stone\n"
end
