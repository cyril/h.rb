# H.rb

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

Settings:

```sh
echo "my-secret" > ~/.h
```

Generate a digest from the system:

```sh
h p@ssw0rd
```

Result:

> `+KsELdbw7gM0e2lQsnCskf1albEXgl9MtXgrmvYkIaM=`

```sh
h シークレット
```

Result:

> `NaNvnGJGWWzzU9DlRSRKZQQER1/9/libXrrghMgBWbU=`

Same operations, with Ruby:

```ruby
require "h"

builder = H::Builder.new("my-secret")

builder.call("p@ssw0rd") # => "+KsELdbw7gM0e2lQsnCskf1albEXgl9MtXgrmvYkIaM="
builder.call("シークレット") # => "NaNvnGJGWWzzU9DlRSRKZQQER1/9/libXrrghMgBWbU="
```

## Alternative Implementations

Shell script implementations are available in the `alternatives/` directory:

### Bash Implementation

A POSIX-compliant version focusing on compatibility and security:

```sh
./alternatives/bash/h p@ssw0rd
```

Result:

> `+KsELdbw7gM0e2lQsnCskf1albEXgl9MtXgrmvYkIaM=`

### Zsh Implementation

A modern implementation using ZSH-specific features:

```sh
./alternatives/zsh/h p@ssw0rd
```

Result:

> `+KsELdbw7gM0e2lQsnCskf1albEXgl9MtXgrmvYkIaM=`

Both shell implementations:
- Use the same configuration file (`~/.h`)
- Provide identical output format
- Enforce secure file permissions
- Handle cleanup automatically

See individual READMEs in the `alternatives/` directory for implementation details.
