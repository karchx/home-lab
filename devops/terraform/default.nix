{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

with pkgs; {
  buildInputs = [
    terraform
  ];
}
