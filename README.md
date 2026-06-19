# NixOS Flake Web Container Server

A declarative NixOS configuration for running a web service with Nginx reverse proxy and containerized applications using Docker via oci-containers.

## Overview

This configuration provides a production-ready setup for:
- **Nginx** - Reverse proxy for web services
- **Docker via oci-containers** - Fully declarative container management
- **NixOS Flakes** - Modern, reproducible system configuration

## Features

- 🔧 Fully declarative infrastructure as code
- 🐳 Container management through OCI containers
- 🌐 Nginx reverse proxy configuration
- 📦 Reproducible builds with Nix Flakes
- 🔄 Easy to version control and deploy

## Requirements

- NixOS (latest stable or unstable)
- Git (for flake support)
- Sufficient disk space for containers

## Quick Start

### 1. Clone the Repository

```bash
git clone https://github.com/RontoS-sudo/Nixos_Flake-WebContainerServer
cd Nixos_Flake-WebContainerServer
```

### 2. Update Flake Lock File

```bash
nix flake update
```

### 3. Build and Deploy

```bash
sudo nixos-rebuild switch --flake .#
```

## Configuration

Edit the configuration files to customize:
- Nginx settings
- Container definitions
- System services
- Network configuration

## Project Structure

```
.
├── flake.nix          # Flake configuration
├── flake.lock         # Locked dependency versions
├── configuration.nix  # Main NixOS configuration
└── README.md          # This file
```

## Common Commands

```bash
# Test configuration without applying
sudo nixos-rebuild test --flake .#

# Build and switch to new configuration
sudo nixos-rebuild switch --flake .#

# Update flake dependencies
nix flake update

# Show flake info
nix flake show
```

## Documentation

For more information on:
- **NixOS**: https://nixos.org/
- **Nix Flakes**: https://nixos.wiki/wiki/Flakes
- **Docker in NixOS**: https://nixos.wiki/wiki/Docker
- **Nginx**: https://nginx.org/

## Troubleshooting

### Containers not starting
Check the OCI container logs:
```bash
journalctl -u docker -f
```

### Nginx configuration issues
Test Nginx configuration:
```bash
nginx -t
```

## Contributing

Feel free to submit issues and enhancement requests!

## License

[Specify your license here]

## Author

Created by [RontoS-sudo](https://github.com/RontoS-sudo)
