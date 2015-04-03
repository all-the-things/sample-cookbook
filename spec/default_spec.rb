require 'spec_helper'

describe 'sample-cookbook::default' do
  let(:chef_run) { ChefSpec::ServerRunner.new.converge(described_recipe) }

  it 'installs Apache' do
    expect(chef_run).to install_package('httpd')
  end

  it 'creates clowns.conf' do
    expect(chef_run).to \
      create_template('/etc/httpd/conf.d/clowns.conf')
  end

  it 'creates bears.conf' do
    expect(chef_run).to \
      create_template('/etc/httpd/conf.d/bears.conf')
  end
end
