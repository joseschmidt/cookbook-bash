require 'spec_helper'

describe 'bash::path_usr_sbin' do
  let (:chef_run) { ChefSpec::Runner.new.converge 'bash::path_usr_sbin' }

  it 'should delete /etc/profile.d/path_usr_sbin.sh' do
    file = '/etc/profile.d/path_usr_sbin.sh'
    chef_run.should delete_file file
  end # it

end # describe
