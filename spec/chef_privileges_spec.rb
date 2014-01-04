require 'spec_helper'

describe 'bash::chef_privileges' do
  let :chef_run do
    ChefSpec::Runner.new.converge 'bash::chef_privileges'
  end # let

  it 'should create file owned by root:root' do
    file = '/etc/chef/encrypted_data_bag_secret'
    chef_run.should create_file file
    expect(chef_run.file(file).owner).to eq('root')
    expect(chef_run.file(file).group).to eq('root')
  end # it

end # describe
