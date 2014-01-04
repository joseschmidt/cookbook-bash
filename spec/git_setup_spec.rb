require 'spec_helper'

describe 'bash::git_setup' do
  let (:chef_run) { ChefSpec::Runner.new.converge 'bash::git_setup' }

  it 'should create /etc/gitconfig owned by root:root' do
    file = '/etc/gitconfig'
    chef_run.should create_cookbook_file file
    expect(chef_run.cookbook_file(file).owner).to eq('root')
    expect(chef_run.cookbook_file(file).group).to eq('root')
  end # it 'should create /etc/gitconfig owned by root:root'

  it 'should create /etc/profile.d/git-completion.sh owned by root:root' do
    file = '/etc/profile.d/git-completion.sh'
    chef_run.should create_remote_file file
    expect(chef_run.remote_file(file).owner).to eq('root')
    expect(chef_run.remote_file(file).group).to eq('root')
  end # it 'should create /etc/profile.d/git-completion.sh owned by root:root'

  it 'should create /etc/profile.d/git-prompt.sh owned by root:root' do
    file = '/etc/profile.d/git-prompt.sh'
    chef_run.should create_remote_file file
    expect(chef_run.remote_file(file).owner).to eq('root')
    expect(chef_run.remote_file(file).group).to eq('root')
  end # it 'should create /etc/profile.d/git-prompt.sh owned by root:root'

end # describe 'bash::git_setup'
