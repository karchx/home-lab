{ pkgs ? import <nixpkgs> { } }:

with pkgs; {
  buildInputs = [
    terraform
  ];
}
