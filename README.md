# H

## Overview

Small tool that generates salted hashes, scented with the SHA2 function.

## Why?

> I prefer to put makeup on passwords rather than yield them to Manager™.

## Installation

    $ gem install h

## Configuration

H reads its configuration from the `~/.h` file at initialization.  This file, which should be readable by its owner only, have the salt value.

## Examples

Generate a digest from the system:

    $ echo "塩" > ~/.h
    $ h シークレット
    -q0zMnMSszj8D23a8aNJX_VYry9oSSLZ30XlHkmFt9I=
    $ h secret 3
    -q0

Same operation, from Ruby:

    irb(main):001:0> require "h"
    true
    irb(main):002:0> H::Generator.new("塩").input "シークレット", 3
    "-q0"

## Status

* [![Gem Version](https://badge.fury.io/rb/h.png)](http://badge.fury.io/rb/h)
* [![Build Status](https://secure.travis-ci.org/cyril/h.rb.png)](//travis-ci.org/cyril/h.rb)
* [![Dependency Status](https://gemnasium.com/cyril/h.rb.svg)](//gemnasium.com/cyril/h.rb)
* [![Inline docs](http://inch-ci.org/github/cyril/h.rb.png)](http://inch-ci.org/github/cyril/h.rb)
* ![](https://ruby-gem-downloads-badge.herokuapp.com/h?type=total)

* * *

Copyright (c) 2014 Cyril Wack, released under the [ISC license](LICENSE.md)
