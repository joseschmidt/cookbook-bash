bash Cookbook
=============
[![Build Status](https://travis-ci.org/jhx/cookbook-bash.png?branch=master)](https://travis-ci.org/jhx/cookbook-bash)

Configures privileges, profiles, and paths.


Requirements
------------
### Cookbooks
No dependencies.

### Platforms
The following platforms are supported and tested under test kitchen:

- CentosOS 5.10, 6.5

Other RHEL family distributions are assumed to work.


Attributes
----------
None.


Recipes
-------
This cookbook provides one main recipe for configuring a node.

- `default.rb` - *Use this recipe* to include the remaining recipes.

### chef_privileges
This recipe sets the owner/mode on chef files.

### default
This recipe includes the remaining recipes.

### git_setup
This recipe installs git convenience tools.

### path_opt_vagrant_ruby_bin
This recipe removes a deprecated path in `/etc/profile.d/`.

### path_sbin
This recipe removes a deprecated path in `/etc/profile.d/`.

### path_usr_sbin
This recipe removes a deprecated path in `/etc/profile.d/`.

### profile
This recipe creates a custom global bash profile.

### rmate
This recipe installs the rmate shell script to allow TextMate to be used over SSH.


Usage
-----
On client nodes, use the default recipe:

````javascript
{ "run_list": ["recipe[bash]"] }
````

The following are the key items achieved by this recipe:

- set chef file privileges
- install/configure git convenience tools
- install global bash profile
- install `rmate` shell script
- remove deprecated files in `/etc/profile.d`


License & Authors
-----------------
- Author:: Doc Walker (<doc.walker@jameshardie.com>)

````text
Copyright 2013-2014, James Hardie Building Products, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
````
