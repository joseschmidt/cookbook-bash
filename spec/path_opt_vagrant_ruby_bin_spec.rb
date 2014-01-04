require 'spec_helper'

describe 'bash::path_opt_vagrant_ruby_bin' do
  let (:chef_run) { ChefSpec::Runner.new.converge 'bash::path_opt_vagrant_ruby_bin' }

  it 'should delete /etc/profile.d/path_opt_vagrant_ruby_bin.sh' do
    file = '/etc/profile.d/path_opt_vagrant_ruby_bin.sh'
    expect(chef_run).to delete_file(file)
  end # it

end # describe
