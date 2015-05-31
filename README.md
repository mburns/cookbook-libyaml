# libyaml cookbook

[![Build Status](https://travis-ci.org/mburns/cookbook-libyaml.svg)](https://travis-ci.org/mburns/cookbook-libyaml)
[![Chef cookbook](https://img.shields.io/cookbook/v/libyaml.svg)](https://supermarket.chef.io/cookbooks/libyaml)

Install libyaml from source.

# Requirements

# Usage

Just include the default recipe and libyaml gets installed.

# Attributes

    default['libyaml']['url'] = 'http://pyyaml.org/download/libyaml'
    default['libyaml']['version'] = '0.1.4'
    default['libyaml']['checksum'] = '7bf81554ae5ab2d9b6977da398ea789722e0db75b86bffdaeb4e66d961de6a37'

    default['libyaml']['configure_options'] = %w{
                                                  --prefix=/usr/local
                                                }

# Recipes

    libyaml::default

# Author

Author:: Michael Burns (michael@mirwin.net)

Author:: Cassiano Leal (cl@cassianoleal.com)
