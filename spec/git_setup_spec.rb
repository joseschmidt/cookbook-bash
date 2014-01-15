# coding: utf-8
require 'spec_helper'

describe 'bash::git_setup' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'creates /etc/gitconfig owned by root:root' do
    file = '/etc/gitconfig'
    expect(chef_run).to create_cookbook_file(file)
      .with(:owner => 'root', :group => 'root')
  end # it

  it 'creates /etc/profile.d/git-completion.sh owned by root:root' do
    file = '/etc/profile.d/git-completion.sh'
    expect(chef_run).to create_remote_file(file)
      .with(:owner => 'root', :group => 'root')
  end # it

  it 'creates /etc/profile.d/git-prompt.sh owned by root:root' do
    file = '/etc/profile.d/git-prompt.sh'
    expect(chef_run).to create_remote_file(file)
      .with(:owner => 'root', :group => 'root')
  end # it

end # describe
