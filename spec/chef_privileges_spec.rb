# coding: utf-8
require 'spec_helper'

describe 'bash::chef_privileges' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  describe '/etc/chef' do
    it 'creates directory with expected owner, group' do
      expect(chef_run).to create_directory(subject)
        .with(:owner => 'root', :group => 'root')
    end # it
  end # describe

  describe '/etc/chef/encrypted_data_bag_secret' do
    it 'creates file with expected owner, group' do
      expect(chef_run).to create_file(subject)
        .with(:owner => 'root', :group => 'root')
    end # it
  end # describe

end # describe
