require 'spec_helper'

describe 'bash::git_setup' do
  let(:chef_run){ ChefSpec::Runner.new.converge(described_recipe) }

  it 'should create /etc/gitconfig owned by root:root' do
    file = '/etc/gitconfig'
    expect(chef_run).to create_cookbook_file(file)
    expect(chef_run.cookbook_file(file).owner).to eq('root')
    expect(chef_run.cookbook_file(file).group).to eq('root')
  end # it

  it 'should create /etc/profile.d/git-completion.sh owned by root:root' do
    file = '/etc/profile.d/git-completion.sh'
    expect(chef_run).to create_remote_file(file)
    expect(chef_run.remote_file(file).owner).to eq('root')
    expect(chef_run.remote_file(file).group).to eq('root')
  end # it

  it 'should create /etc/profile.d/git-prompt.sh owned by root:root' do
    file = '/etc/profile.d/git-prompt.sh'
    expect(chef_run).to create_remote_file(file)
    expect(chef_run.remote_file(file).owner).to eq('root')
    expect(chef_run.remote_file(file).group).to eq('root')
  end # it

end # describe
