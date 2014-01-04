require 'chefspec'
require 'fauxhai'

describe 'bash::profile' do
  let(:chef_run) do
    ChefSpec::ChefRunner.new do |node|
      node.set['file'] = {
        'header' => 'node.file.header'
      }
    end.converge(described_recipe)
  end # let

  it 'should create /etc/profile.d/jhx_profile.sh owned by root:root' do
    file = '/etc/profile.d/jhx_profile.sh'
    chef_run.should create_file_with_content file, 'node.file.header'
    expect(chef_run.template(file).owner).to eq('root')
    expect(chef_run.template(file).group).to eq('root')
  end # it

end # describe 'bash::profile'
