# encoding: utf-8
name              'bash'
maintainer        'James Hardie Building Products, Inc.'
maintainer_email  'doc.walker@jameshardie.com'
description       'Configures privileges, profiles, and paths.'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
license           'Apache 2.0'
version           '0.2.0'

#--------------------------------------------------------------------- recipes
recipe            'bash',
                  'Includes the remaining recipes'
recipe            'bash::chef_privileges',
                  'Sets the owner/mode on chef files'
recipe            'bash::git_setup',
                  'Installs git convenience tools'
recipe            'bash::path_opt_vagrant_ruby_bin',
                  'Removes a deprecated path in /etc/profile.d/'
recipe            'bash::path_sbin',
                  'Removes a deprecated path in /etc/profile.d/.'
recipe            'bash::path_usr_sbin',
                  'Removes a deprecated path in /etc/profile.d/.'
recipe            'bash::profile',
                  'Creates a custom global bash profile'
recipe            'bash::rmate',
                  'Installs the rmate shell script to allow TextMate ' \
                  'to be used over SSH'

#------------------------------------------------------- cookbook dependencies

#--------------------------------------------------------- supported platforms
# tested
supports          'centos'

# platform_family?('rhel'): not tested, but should work
supports          'amazon'
supports          'oracle'
supports          'redhat'
supports          'scientific'

# platform_family?('debian'): not tested, but may work
supports          'debian'
supports          'ubuntu'
