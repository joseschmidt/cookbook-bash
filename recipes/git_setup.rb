#
# Cookbook Name:: bash
# Recipe:: git_setup
#
# Author:: Doc Walker (<doc.walker@jameshardie.com>)
#
# Copyright 2012-2013-2013, James Hardie Building Products, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# install global git config
cookbook_file '/etc/gitconfig' do
  owner  'root'
  group  'root'
  mode   '0644'
end # cookbook_file '/etc/gitconfig'


# install git completion script
remote_file '/etc/profile.d/git-completion.sh' do
  source 'https://raw.github.com/git/git/master/contrib/completion/git-completion.bash'
  owner  'root'
  group  'root'
  mode   '0644'
end # remote_file '/etc/profile.d/git-completion.bash'


# install git prompt script
remote_file '/etc/profile.d/git-prompt.sh' do
  source 'https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh'
  owner  'root'
  group  'root'
  mode   '0644'
end # remote_file '/etc/profile.d/git-prompt.sh'