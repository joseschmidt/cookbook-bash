require 'chefspec'

describe 'bash::path_opt_vagrant_ruby_bin' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'bash::path_opt_vagrant_ruby_bin' }
  
  it 'should delete /etc/profile.d/path_opt_vagrant_ruby_bin.sh' do
    file = '/etc/profile.d/path_opt_vagrant_ruby_bin.sh'
    chef_run.should delete_file file
  end # it 'should delete /etc/profile.d/path_opt_vagrant_ruby_bin.sh'
  
end # describe 'bash::path_opt_vagrant_ruby_bin'
