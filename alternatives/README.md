# Alternative Implementations

This directory contains alternative implementations of the H hash generator in different shell languages.

## Available Implementations

### Bash Implementation (`bash/h.sh`)

A POSIX-compliant implementation focused on maximum compatibility. Features:
- Works with older versions of bash
- No external dependencies beyond core utils and OpenSSL
- Strict error handling with `set -euo pipefail`
- Memory-safe operations and cleanup

### ZSH Implementation (`zsh/h.zsh`)

A modern implementation leveraging ZSH-specific features. Features:
- Advanced error handling with ZSH options
- Better variable scoping and type checking
- More robust cleanup procedures
- Improved file handling

## Common Features

Both implementations provide:
- Secure secret generation and storage
- File permission validation
- Dependency checking
- Secure memory cleanup
- Cross-platform compatibility (Linux/BSD/macOS)

## Security Considerations

- Both scripts enforce strict file permissions (600)
- Memory is cleaned after use
- Temporary files are handled securely
- Symbolic links are rejected
- Input validation is performed

## Installation

1. Choose your preferred implementation
2. Copy the script to your desired location
3. Make it executable: `chmod +x h.sh` or `chmod +x h.zsh`
4. (Optional) Create a symlink in your PATH

## Usage

Both implementations follow the same usage pattern:

```bash
# Bash version
./h.sh "your string"

# ZSH version
./h.zsh "your string"
```

The first run will create a secure configuration file at `~/.h`.

## Differences from Main Implementation

These alternatives provide:
- Enhanced security features
- More explicit error handling
- Additional input validation
- Improved cleanup procedures
- Platform-specific optimizations
