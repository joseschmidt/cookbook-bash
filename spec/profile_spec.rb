# coding: utf-8
require 'spec_helper'

describe 'bash::profile' do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.set['file'] = {
        'header' => 'node.file.header'
      }
    end.converge(described_recipe)
  end # let

  it 'should create /etc/profile.d/jhx_profile.sh owned by root:root' do
    file = '/etc/profile.d/jhx_profile.sh'
    expect(chef_run).to create_template(file)
      .with(:owner => 'root', :group => 'root')
    expect(chef_run).to render_file(file).with_content('node.file.header')
  end # it

end # describe
