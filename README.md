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

To prevent your log display the message as a string, do not specify it at first.

    $ h
    Message: ******
    -q0zMnMSszj8D23a8aNJX_VYry9oSSLZ30XlHkmFt9I=

## Code Status

* [![Build Status](https://secure.travis-ci.org/cyril/h.png)](http://travis-ci.org/cyril/h)
* [![Dependencies Status](https://gemnasium.com/cyril/h.png?travis)](https://gemnasium.com/cyril/h)

* * *

Copyright (c) 2014 Cyril Wack, released under the [ISC license](LICENSE.md)
