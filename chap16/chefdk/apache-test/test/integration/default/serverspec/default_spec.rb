require 'spec_helper'

describe 'web site' do
  it 'responds on port 80' do
    expect(port 80).to be_listening 'tcp'
  end

  it 'returns eth1 in the HTML body' do
    expect(command 'curl localhost:80').to return_stdout(/eth1/)
  end

  it 'has apache installed' do
    expect(package 'httpd').to be_installed
  end
end
