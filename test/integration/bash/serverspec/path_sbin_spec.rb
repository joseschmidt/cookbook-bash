# encoding: utf-8
require 'spec_helper'

describe 'bash::path_sbin' do
  describe file('/etc/profile.d/path_sbin.sh') do
    it 'is not a file' do
      expect(subject).to_not be_file
    end # it
  end # describe
end # describe
