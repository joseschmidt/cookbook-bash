# coding: utf-8
require 'spec_helper'

describe 'bash::profile' do
  context file('/etc/profile.d/jhx_profile.sh') do
    it 'is owned by root' do
      expect(subject).to be_owned_by('root')
    end # it

    it 'is in group root' do
      expect(subject).to be_grouped_into('root')
    end # it

    it 'is mode 0644' do
      expect(subject).to be_mode(644)
    end # it

    it 'matches expected content' do
      expect(subject.content).to match('# fake')
    end # it
  end # context
end # describe
