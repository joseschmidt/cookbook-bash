# encoding: utf-8
#
# Cookbook Name:: bash
# Recipe:: default
#
# Author:: Doc Walker (<doc.walker@jameshardie.com>)
#
# Copyright 2012-2013, James Hardie Building Products, Inc.
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

include_recipe 'bash::chef_privileges'
include_recipe 'bash::git_setup'
include_recipe 'bash::profile'
include_recipe 'bash::rmate'
include_recipe 'bash::path_opt_vagrant_ruby_bin'
include_recipe 'bash::path_sbin'
include_recipe 'bash::path_usr_sbin'
