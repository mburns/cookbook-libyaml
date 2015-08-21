# libyaml cookbook

[![Build Status](https://travis-ci.org/mburns/libyaml.svg)](https://travis-ci.org/mburns/libyaml)
[![Chef cookbook](https://img.shields.io/cookbook/v/libyaml.svg)](https://supermarket.chef.io/cookbooks/libyaml)

Install libyaml from package or source.

# Requirements

# Usage

Just include the default recipe and libyaml gets installed.

# Attributes

    default['libyaml']['url'] = 'http://pyyaml.org/download/libyaml'
    default['libyaml']['version'] = '0.1.6'
    default['libyaml']['checksum'] = '7da6971b4bd08a986dd2a61353bc422362bd0edcc67d7ebaac68c95f74182749'

    default['libyaml']['configure_options'] = %w{
                                                  --prefix=/usr/local
                                                }

# Recipes

    libyaml::default

# Author

Author:: Michael Burns (michael@mirwin.net)

Author:: Cassiano Leal (cl@cassianoleal.com)
