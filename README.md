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
+KsELdbw7gM0e2lQsnCskf1albEXgl9MtXgrmvYkIaM=

$ h シークレット
NaNvnGJGWWzzU9DlRSRKZQQER1/9/libXrrghMgBWbU=
```

Same operations, with Ruby:

```ruby
require "h"

builder = H::Builder.new("my-secret")

builder.call("p@ssw0rd") # => +KsELdbw7gM0e2lQsnCskf1albEXgl9MtXgrmvYkIaM=
builder.call("シークレット") # => NaNvnGJGWWzzU9DlRSRKZQQER1/9/libXrrghMgBWbU=
```

## Status

* [![Gem Version](https://badge.fury.io/rb/h.png)](http://badge.fury.io/rb/h)
* [![Build Status](https://secure.travis-ci.org/cyril/h.rb.png)](//travis-ci.org/cyril/h.rb)
* [![Dependency Status](https://gemnasium.com/cyril/h.rb.svg)](//gemnasium.com/cyril/h.rb)
* ![](https://ruby-gem-downloads-badge.herokuapp.com/h?type=total)

***

Copyright (c) 2014 Cyril Kato, released under the [ISC license](LICENSE.md)
