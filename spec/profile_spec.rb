# encoding: utf-8
require 'spec_helper'

describe 'bash::profile' do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.set['file']['header'] = 'node.file.header'
    end.converge(described_recipe)
  end # let

  describe '/etc/profile.d/jhx_profile.sh' do
    it 'renders file with expected header' do
      expect(chef_run).to render_file(subject)
        .with_content('node.file.header')
    end # it

    it 'creates template with expected owner, group' do
      expect(chef_run).to create_template(subject)
        .with(:owner => 'root', :group => 'root')
    end # it
  end # describe

end # describe
