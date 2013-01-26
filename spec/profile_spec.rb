require 'chefspec'
require 'fauxhai'

describe 'bash::profile' do
  before do
    Fauxhai.mock do |node|
      node['file'] = {
        'header' => 'node.file.header'
      }
    end # Fauxhai.mock
  end # before
  
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'bash::profile' }
  
  it 'should create /etc/profile.d/jhx_profile.sh owned by root:root' do
    file = '/etc/profile.d/jhx_profile.sh'
    chef_run.should create_file_with_content file, 'node.file.header'
    chef_run.template(file).should be_owned_by 'root', 'root'
  end # it 
  
end # describe 'bash::profile'
