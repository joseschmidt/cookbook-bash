# coding: utf-8
require 'spec_helper'

describe 'bash::rmate' do
  describe file('/usr/local/bin/rmate') do
    it 'is owned by root' do
      expect(subject).to be_owned_by('root')
    end # it

    it 'is in group root' do
      expect(subject).to be_grouped_into('root')
    end # it

    it 'is mode 0755' do
      expect(subject).to be_mode(755)
    end # it

    it 'includes expected version string' do
      expect(subject.content).to include('rmate version 1.5 (2012-09-19)')
    end # it
  end # describe
end # describe
