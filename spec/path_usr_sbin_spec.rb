require 'chefspec'

describe 'bash::path_usr_sbin' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'bash::path_usr_sbin' }
  
  it 'should delete /etc/profile.d/path_usr_sbin.sh' do
    file = '/etc/profile.d/path_usr_sbin.sh'
    chef_run.should delete_file file
  end # it 'should delete /etc/profile.d/path_usr_sbin.sh'
  
end # describe 'bash::path_usr_sbin'