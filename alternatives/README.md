# Alternative Implementations

This directory contains alternative implementations of the H hash generator in different languages.

## Available Implementations

### Python Implementation (`python/h`)
A modern implementation focusing on cross-platform compatibility:
```sh
./python/h p@ssw0rd
```

### Bash Implementation (`bash/h`)
A POSIX-compliant implementation focusing on security:
```sh
./bash/h p@ssw0rd
```

### Zsh Implementation (`zsh/h`)
An implementation leveraging ZSH-specific features:
```sh
./zsh/h p@ssw0rd
```

## Common Features

All implementations:
- Use the same configuration file (`~/.h`)
- Provide identical output format
- Enforce secure file permissions (600)
- Handle cleanup automatically
- Support cross-platform usage (Linux/BSD/macOS)
- Enforce secure memory management

## Usage

1. Choose your preferred implementation
2. (Optional) Create a symlink in your PATH

The first run will create a secure configuration file at `~/.h`.

See individual implementation directories for specific details.
