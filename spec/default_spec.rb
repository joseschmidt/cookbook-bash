require 'chefspec'
require 'fauxhai'

describe 'bash::default' do
  before do
    Fauxhai.mock do |node|
      node['file'] = {
        'header' => ''
      }
    end # Fauxhai.mock
  end # before
  
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'bash::default' }
  
  it 'should include recipe bash::chef_privileges' do
    chef_run.should include_recipe 'bash::chef_privileges'
  end # it 'should include recipe bash::chef_privileges'
  
  it 'should include recipe bash::profile' do
    chef_run.should include_recipe 'bash::profile'
  end # it 'should include recipe bash::profile'
  
  it 'should include recipe bash::path_opt_vagrant_ruby_bin' do
    chef_run.should include_recipe 'bash::path_opt_vagrant_ruby_bin'
  end # it 'should include recipe bash::path_opt_vagrant_ruby_bin'
  
  it 'should include recipe bash::path_sbin' do
    chef_run.should include_recipe 'bash::path_sbin'
  end # it 'should include recipe bash::path_sbin'
  
  it 'should include recipe bash::path_usr_sbin' do
    chef_run.should include_recipe 'bash::path_usr_sbin'
  end # it 'should include recipe bash::path_usr_sbin'
  
end # describe 'bash::default'
