# H

## Overview

Small tool that generates salted hashes, scented with the SHA2 function.

## Why?

> I prefer to put makeup on passwords rather than yield them to Manager™.

## Installation

    $ gem install h

## Configuration

H reads its configuration from the `.env` file at initialization.  This file, which should be readable by its owner only, have the `STATIC_KEY` parameter.

## Examples

Generate a digest from the system:

    $ echo "STATIC_KEY=secret" > .env
    $ h secret
    X3NlwKecagWCwzeY-tskWNxCotYcxBJMTjDGjeqjk1c=
    $ h secret 42
    X3NlwKecagWCwzeY-tskWNxCotYcxBJMTjDGjeqjk1
    $ h secret 5
    X3Nlw

Same operation, from Ruby:

    irb(main):001:0> require "h"
    true
    irb(main):002:0> H::Generator.new.input "secret"
    "X3NlwKecagWCwzeY-tskWNxCotYcxBJMTjDGjeqjk1c="

To prevent your log display the message as a string, do not specify it at first.

    $ h
    Message: ******
    X3NlwKecagWCwzeY-tskWNxCotYcxBJMTjDGjeqjk1c=

## Code Status

* [![Build Status](https://secure.travis-ci.org/cyril/h.png)](http://travis-ci.org/cyril/h)
* [![Dependencies Status](https://gemnasium.com/cyril/h.png?travis)](https://gemnasium.com/cyril/h)

* * *

Copyright (c) 2014 Cyril Wack, released under the [ISC license](LICENSE.md)
