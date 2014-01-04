require 'spec_helper'

describe 'bash::default' do
  let(:chef_run) do
    ChefSpec::ChefRunner.new do |node|
      node.set['file'] = {
        'header' => ''
      }
    end.converge(described_recipe)
  end # let

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
