# hello.rb - creates welcome.txt in the user's home directory
file "#{ENV['HOME']}/welcome.txt" do
  content 'Welcome to Chef'
end
