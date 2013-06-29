name              "nodejs"
maintainer        "Phil Cohen"
maintainer_email  "github@phlippers.net"
license           "MIT"
description       "Installs Node.js"
long_description  "Please refer to README.md"
version           "1.6.0"

recipe "nodejs", "Sets up the apt repository and installs dependent packages"
recipe "nodejs::npm", "Install npm [DEPRECATED]"

depends "apt", ">= 1.4.4"

supports "debian"
supports "ubuntu"
