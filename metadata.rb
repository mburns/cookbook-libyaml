name             "libyaml"
maintainer       "mburns"
maintainer_email "michael@mirwin.net"
license          "Apache 2.0"
description      "Installs/Configures libyaml"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"
recipe           "libyaml", "Installs libyaml from source"
source_url       "https://github.com/mburns/cookbook-libyaml" if respond_to?(:source_url)
issues_url       "https://github.com/mburns/cookbook-libyaml/issues" if respond_to?(:issues_url)

%w{ debian ubuntu }.each do |os|
  supports os
end

%w{ build-essential apt }.each do |cb|
  depends cb
end
