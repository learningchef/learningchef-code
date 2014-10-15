require 'spec_helper'

set :os, :family => 'redhat', :release => 6

describe 'web site' do
  it 'responds on port 80' do
    expect(port 80).to be_listening 'tcp'
  end

  it 'returns eth1 in the HTML body' do
    expect(command('curl localhost:80').stdout).to match /eth1/
  end

  it 'has the apache web server installed' do
    expect(package 'httpd').to be_installed
  end
end
