# encoding: utf-8
require 'spec_helper'

describe 'bash::default' do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.set['file']['header'] = ''
    end.converge(described_recipe)
  end # let

  describe 'bash::chef_privileges' do
    it 'includes described recipe' do
      expect(chef_run).to include_recipe(subject)
    end # it
  end # describe

  describe 'bash::profile' do
    it 'includes described recipe' do
      expect(chef_run).to include_recipe(subject)
    end # it
  end # describe

  describe 'bash::path_opt_vagrant_ruby_bin' do
    it 'includes described recipe' do
      expect(chef_run).to include_recipe(subject)
    end # it
  end # describe

  describe 'bash::path_sbin' do
    it 'includes described recipe' do
      expect(chef_run).to include_recipe(subject)
    end # it
  end # describe

  describe 'bash::path_usr_sbin' do
    it 'includes described recipe' do
      expect(chef_run).to include_recipe(subject)
    end # it
  end # describe

end # describe
