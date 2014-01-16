# coding: utf-8
require 'spec_helper'

describe 'bash::chef_privileges' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'creates directory owned by root:root' do
    expect(chef_run).to create_directory('/etc/chef')
      .with(:owner => 'root', :group => 'root')
  end # it

  it 'creates file owned by root:root' do
    file = '/etc/chef/encrypted_data_bag_secret'
    expect(chef_run).to create_file(file)
      .with(:owner => 'root', :group => 'root')
  end # it

end # describe
