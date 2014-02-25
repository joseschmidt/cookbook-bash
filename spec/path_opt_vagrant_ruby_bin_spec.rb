# encoding: utf-8
require 'spec_helper'

describe 'bash::path_opt_vagrant_ruby_bin' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  describe '/etc/profile.d/path_opt_vagrant_ruby_bin.sh' do
    it 'deletes file' do
      expect(chef_run).to delete_file(subject)
    end # it
  end # describe

end # describe
