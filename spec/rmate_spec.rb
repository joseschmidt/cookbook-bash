# coding: utf-8
require 'spec_helper'

describe 'bash::rmate' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  describe '/usr/local/bin/rmate' do
    it 'creates file with expected owner, group' do
      expect(chef_run).to create_cookbook_file(subject)
        .with(:owner => 'root', :group => 'root')
    end # it
  end # describe

end # describe
