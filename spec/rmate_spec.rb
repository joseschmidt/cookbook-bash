# coding: utf-8
require 'spec_helper'

describe 'bash::rmate' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'creates /usr/local/bin/rmate owned by root:root' do
    file = '/usr/local/bin/rmate'
    expect(chef_run).to create_cookbook_file(file)
      .with(:owner => 'root', :group => 'root')
  end # it

end # describe
