require 'chefspec'

describe 'bash::chef_privileges' do
  let :chef_run do
    ChefSpec::ChefRunner.new.converge 'bash::chef_privileges'
  end # let :chef_run
  
  it 'should create file owned by root:root' do
    file = '/etc/chef/encrypted_data_bag_secret'
    chef_run.should create_file file
    chef_run.file(file).should be_owned_by 'root', 'root'
  end # it 'should create file owned by root:root'
  
end # describe 'bash::chef_privileges'
