name              "nodejs"
maintainer        "Phil Cohen"
maintainer_email  "github@phlippers.net"
license           "MIT"
description       "Installs Node.js"
long_description  "Please refer to README.md"
version           "1.8.0"

recipe "nodejs", "Sets up the apt repository and installs dependent packages"
recipe "nodejs::_apt", "Internal recipe to configure the apt repository"

depends "apt"

supports "debian"
supports "ubuntu"
