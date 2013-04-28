H
=

Overview
--------

Very small cryptographic tool that generates on-the-fly custom message digests,
according to some parameters.

Why?
----

Because I prefer to put makeup on passwords rather than yield them to Manager™.

Installation
------------

    $ gem install h

Configuration
-------------

H reads its configuration from the YAML `~/.h` file at initialization.
This file, which should be readable by its owner only, has four parameters:

 * Max length: The maximum length of returned message digests.
 * Radix: The number of unique digits that compose message digests.
 * Encryption: A cryptographic hash function in Ruby's Digest module.
 * Static key: Provides salted messages through concatenation.

Examples
--------

Generate a digest from the system:

    $ h secret
    t3dpe24xie3y74t

Because no configuration has been detected, this default file was created:

    $ cat ~/.h
    ---
    max_length: 15
    radix: 36
    encryption: SHA1
    static_key: foobar

Same operation, from Ruby:

    irb(main):001:0> require "h"
    true
    irb(main):002:0> H::Generator.new.input "secret"
    "t3dpe24xie3y74t"

To prevent your log display the message as a string, do not specify it at first.

    $ h
    Message: ******
    t3dpe24xie3y74t

Example with the SHA2 cryptographic hash instead of SHA1, and a custom key:

    $ echo "{max_length: 15, radix: 36, encryption: SHA2, static_key: sun}" > ~/.h
    $ h secret
    5gumh4smv1iit23

And now a useless test, with conventional parameters. You can Google the result.

    $ echo "{max_length: 40, radix: 16, encryption: SHA1, static_key: ''}" > ~/.h
    $ h "The quick brown fox jumps over the lazy dog"
    2fd4e1c67a2d28fced849ee1bb76e7391b93eb12

Code Status
-----------

* [![Build Status](https://secure.travis-ci.org/cyril/h.png)](http://travis-ci.org/cyril/h)
* [![Coverage Status](https://coveralls.io/repos/cyril/h/badge.png)](https://coveralls.io/r/cyril/h)
* [![Dependencies Status](https://gemnasium.com/cyril/h.png?travis)](https://gemnasium.com/cyril/h)

Copyright (c) 2011 Cyril Wack, released under the ISC license
