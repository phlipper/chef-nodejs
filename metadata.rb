name              "nodejs"
maintainer        "Phil Cohen"
maintainer_email  "github@phlippers.net"
license           "MIT"
description       "Installs Node.js"
long_description  "Please refer to README.md"
version           "1.1.3"

recipe "nodejs", "Sets up the apt repository and installs dependent packages"
recipe "nodejs::dev", "Install the development libraries"
recipe "nodejs::npm", "Install npm"

depends "apt", ">= 1.4.4"

supports "ubuntu"
