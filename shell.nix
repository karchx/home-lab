{ pkgs ? import <nixpkgs> { config = { allowUnfree = true; }; }, ... }:

let
   devops = pkgs.callPackage ./devops/shell.nix {};
in
pkgs.mkShell {
  buildInputs = [devops];
}