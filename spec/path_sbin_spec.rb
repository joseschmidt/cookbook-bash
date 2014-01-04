require 'spec_helper'

describe 'bash::path_sbin' do
  let (:chef_run) { ChefSpec::Runner.new.converge 'bash::path_sbin' }

  it 'should delete /etc/profile.d/path_sbin.sh' do
    file = '/etc/profile.d/path_sbin.sh'
    expect(chef_run).to delete_file(file)
  end # it

end # describe
