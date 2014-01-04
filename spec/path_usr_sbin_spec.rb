require 'spec_helper'

describe 'bash::path_usr_sbin' do
  let(:chef_run){ ChefSpec::Runner.new.converge(described_recipe) }

  it 'should delete /etc/profile.d/path_usr_sbin.sh' do
    file = '/etc/profile.d/path_usr_sbin.sh'
    expect(chef_run).to delete_file(file)
  end # it

end # describe
