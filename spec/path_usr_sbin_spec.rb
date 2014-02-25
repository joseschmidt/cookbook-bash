# encoding: utf-8
require 'spec_helper'

describe 'bash::path_usr_sbin' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  describe '/etc/profile.d/path_usr_sbin.sh' do
    it 'deletes file' do
      expect(chef_run).to delete_file(subject)
    end # it
  end # describe

end # describe
