# chef-nodejs [![Build Status](https://travis-ci.org/phlipper/chef-nodejs.png?branch=master)](https://travis-ci.org/phlipper/chef-nodejs)

## Description

Installs [Node.js](http://nodejs.org/) or optionally [io.js](https://iojs.org).


## Requirements

### Supported Platforms

The following platforms are supported by this cookbook, meaning that the recipes run on these platforms without error:

* Debian 7.8
* Debian 8.0
* Ubuntu 12.04
* Ubuntu 14.04

## Recipes

* `nodejs` - The default recipe. This sets up the apt repository and installs common packages and development libraries.
* `nodejs::_apt` - Internal recipe to configure the apt repository.


## Attributes

```ruby
default["nodejs"]["engine"] = "node"   # or `iojs`
default["nodejs"]["version"] = "0.12"  # or `0.10`, or `1.x` for io.js
```


## Usage

This cookbook installs the Node.js components if not present, and pulls updates if they are installed on the system.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Contributors

Many thanks go to the following who have contributed to making this gem even better:

* **[@iafonov](https://github.com/iafonov)**
    * support for more Ubuntu versions
* **[@nshahzad](https://github.com/nshahzad)**
    * add node.js-legacy repository


## License

**chef-nodejs**

* Freely distributable and licensed under the [MIT license](http://phlipper.mit-license.org/2011-2015/license.html).
* Copyright (c) 2011-2015 Phil Cohen (github@phlippers.net) [![endorse](http://api.coderwall.com/phlipper/endorsecount.png)](http://coderwall.com/phlipper)  [![Gittip](http://img.shields.io/gittip/phlipper.png)](https://www.gittip.com/phlipper/)
* http://phlippers.net/
