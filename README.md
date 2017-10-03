# H

## Overview

Small tool that generates salted hashes, scented with the SHA-256 hash function.

## Why?

> I prefer to put makeup on passwords rather than yield them to Manager™.

## Installation

    $ gem install h

## Configuration

H reads its configuration from the `~/.h` file at initialization.
This file, which should be readable by its owner only, have the salt value.

## Examples

Generate a digest from the system:

```sh
$ echo "my-secret" > ~/.h

$ h p@ssw0rd
ff665753fe1d26bd6a721760fe3b6623568a9c51962d6bfc9b7fc73d1f1c14d5

$ h シークレット
069f550ba39da8f87b0229ad5e3d75814c472b1c5a109ff236f9184f49fb3a25
```

Same operations, with Ruby:

```ruby
require "h"

builder = H::Builder.new("my-secret")

builder.call("p@ssw0rd") # => ff665753fe1d26bd6a721760fe3b6623568a9c51962d6bfc9b7fc73d1f1c14d5
builder.call("シークレット") # => 069f550ba39da8f87b0229ad5e3d75814c472b1c5a109ff236f9184f49fb3a25
```

## Status

* [![Gem Version](https://badge.fury.io/rb/h.png)](http://badge.fury.io/rb/h)
* [![Build Status](https://secure.travis-ci.org/cyril/h.rb.png)](//travis-ci.org/cyril/h.rb)
* [![Dependency Status](https://gemnasium.com/cyril/h.rb.svg)](//gemnasium.com/cyril/h.rb)
* ![](https://ruby-gem-downloads-badge.herokuapp.com/h?type=total)

***

Copyright (c) 2014 Cyril Kato, released under the [ISC license](LICENSE.md)
