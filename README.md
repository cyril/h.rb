# H.rb

[![Build Status](https://travis-ci.org/cyril/h.rb.svg?branch=master)](https://travis-ci.org/cyril/h.rb)

## Overview

Small tool that generates salted hashes, scented with the SHA-256 hash function.

## Why?

> I prefer to put makeup on passwords rather than yield them to Manager™.

## Installation

    $ gem install h

## Configuration

**H** reads its configuration from the `~/.h` file at initialization.
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

builder.call("p@ssw0rd") # => "+KsELdbw7gM0e2lQsnCskf1albEXgl9MtXgrmvYkIaM="
builder.call("シークレット") # => "NaNvnGJGWWzzU9DlRSRKZQQER1/9/libXrrghMgBWbU="
```
