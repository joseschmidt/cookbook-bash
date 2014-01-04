# coding: utf-8
require 'spec_helper'

describe 'bash::chef_privileges' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'should create file owned by root:root' do
    file = '/etc/chef/encrypted_data_bag_secret'
    expect(chef_run).to create_file(file)
    expect(chef_run.file(file).owner).to eq('root')
    expect(chef_run.file(file).group).to eq('root')
  end # it

end # describe
