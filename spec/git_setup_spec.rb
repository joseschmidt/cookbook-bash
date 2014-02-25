# encoding: utf-8
require 'spec_helper'

describe 'bash::git_setup' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  describe '/etc/gitconfig' do
    it 'creates file with expected owner, group' do
      expect(chef_run).to create_cookbook_file(subject)
        .with(:owner => 'root', :group => 'root')
    end # it
  end # describe

  describe '/etc/profile.d/git-completion.sh' do
    it 'creates file with expected owner, group' do
      expect(chef_run).to create_remote_file(subject)
        .with(:owner => 'root', :group => 'root')
    end # it
  end # describe

  describe '/etc/profile.d/git-prompt.sh' do
    it 'creates file with expected owner, group' do
      expect(chef_run).to create_remote_file(subject)
        .with(:owner => 'root', :group => 'root')
    end # it
  end # describe

end # describe
