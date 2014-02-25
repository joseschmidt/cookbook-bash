# encoding: utf-8
require 'spec_helper'

describe 'bash::profile' do
  describe file('/etc/profile.d/jhx_profile.sh') do
    it 'is owned by root' do
      expect(subject).to be_owned_by('root')
    end # it

    it 'is in group root' do
      expect(subject).to be_grouped_into('root')
    end # it

    it 'is mode 0644' do
      expect(subject).to be_mode(644)
    end # it

    it 'includes expected file header' do
      expect(subject.content).to include('# fake')
    end # it
  end # describe
end # describe
