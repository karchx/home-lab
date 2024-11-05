{ pkgs ? import <nixpkgs> {}, ... }:

let
  devops = pkgs.callPackage ./devops/shell.nix {};
in
pkgs.mkShell {
  buildInputs = [devops];
}