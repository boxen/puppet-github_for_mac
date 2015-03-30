**This Boxen module is now deprecated. The advised method for installing applications with Boxen is to now use [homebrew-cask](http://caskroom.io/). Add the following to your manifest to install Github using brewcask:**

```puppet
package { 'github': provider => 'brewcask' }
```

---

# Install GitHub for Mac Puppet Module for Boxen
[![Build Status](https://travis-ci.org/boxen/puppet-github_for_mac.svg?branch=master)](https://travis-ci.org/boxen/puppet-github_for_mac)

GitHub for Mac - The easiest way to share your code with GitHub

See mac.github.com for more.

## Usage

```include github_for_mac```


## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
