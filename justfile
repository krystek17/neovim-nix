# List options
default:
    @just --list

# Update flake lock
update:
    nix flake update

check:
    nix flake check --show-trace
