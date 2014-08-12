require 'chefspec'

describe 'apache-test::default' do
  let (:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs apache2' do
    expect(chef_run).to install_package('httpd')
  end

  it 'creates index.html' do
    expect(chef_run).to create_template('/var/www/html/index.html')
  end
end
