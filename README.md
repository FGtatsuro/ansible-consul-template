ansible-consul-template
====================================

[![Build Status](https://travis-ci.org/FGtatsuro/ansible-consul-template.svg?branch=master)](https://travis-ci.org/FGtatsuro/ansible-consul-template)

Ansible role for Consul Template.

Requirements
------------

The dependencies on other softwares/libraries for this role.

- Debian
- Alpine Linux
- OSX
  - Homebrew (>= 0.9.5)

Role Variables
--------------

The variables we can use in this role.

### Only Linux

These values are valid only on Linux.

|name|description|type|default|
|---|---|---|---|
|consul_template_download_url|Download URL of Consul Template archive.|str|https://releases.hashicorp.com/consul-template/0.19.4/consul-template_0.19.4_linux_amd64.zip|
|consul_template_sha256|SHA256 signature of Consul Template archive.|str|5f70a7fb626ea8c332487c491924e0a2d594637de709e5b430ecffc83088abc0|
|consul_template_download_tmppath|File path downloaded Consul Template archive is put temporary.|str|/tmp/consul_template.zip|
|consul_template_bin_dir|Directory path Consul Template binary is put. The path of Consul Template binary is `{{ consul_template_bin_dir }}/consul-template`.|str|/usr/local/bin|

- If you want to overwrite values, please also check https://releases.hashicorp.com/consul-template.

Role Dependencies
-----------------

The dependencies on other roles for this role.

- FGtatsuro.python-requirements

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: FGtatsuro.consul-template }

Test on local Docker host
-------------------------

This project run tests on Travis CI, but we can also run them on local Docker host.
Please check `install`, `before_script`, and `script` sections of `.travis.yml`.
We can use same steps of them for local Docker host.

Local requirements are as follows.

- Ansible (>= 2.0.0)
- Docker (>= 1.10.1)

License
-------

MIT
