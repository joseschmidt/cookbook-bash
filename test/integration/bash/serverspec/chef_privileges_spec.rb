# encoding: utf-8
require 'spec_helper'

describe 'bash::chef_privileges' do
  describe file('/etc/chef') do
    it 'is directory' do
      expect(subject).to be_directory
    end # it

    it 'is owned by root' do
      expect(subject).to be_owned_by('root')
    end # it

    it 'is in group root' do
      expect(subject).to be_grouped_into('root')
    end # it

    it 'is mode 755' do
      expect(subject).to be_mode(755)
    end # it
  end # describe

  describe file('/etc/chef/encrypted_data_bag_secret') do
    it 'is owned by root' do
      expect(subject).to be_owned_by('root')
    end # it

    it 'is in group root' do
      expect(subject).to be_grouped_into('root')
    end # it

    it 'is mode 0600' do
      expect(subject).to be_mode(600)
    end # it
  end # describe

end # describe
