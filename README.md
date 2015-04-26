# chef-nodejs [![Build Status](https://travis-ci.org/phlipper/chef-nodejs.png?branch=master)](https://travis-ci.org/phlipper/chef-nodejs)

## Description

Installs [Node.js](http://nodejs.org/) and optionally [npm](http://npmjs.org/).


## Requirements

### Supported Platforms

The following platforms are supported by this cookbook, meaning that the recipes run on these platforms without error:

* Debian 7
* Ubuntu 12.04+

## Recipes

* `nodejs` - The default recipe. This sets up the apt repository and installs common packages and development libraries.
* `nodejs::_apt` - Internal recipe to configure the apt repository.


## Attributes

```ruby
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

* Freely distributable and licensed under the [MIT license](http://phlipper.mit-license.org/2011-2014/license.html).
* Copyright (c) 2011-2014 Phil Cohen (github@phlippers.net) [![endorse](http://api.coderwall.com/phlipper/endorsecount.png)](http://coderwall.com/phlipper)  [![Gittip](http://img.shields.io/gittip/phlipper.png)](https://www.gittip.com/phlipper/)
* http://phlippers.net/
