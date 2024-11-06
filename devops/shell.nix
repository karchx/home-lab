{ pkgs ? import <nixpkgs> {}, ... }:

let
  terraformEnv = import ./terraform/default.nix { inherit pkgs; };
  ansiblePackage = pkgs.callPackage ./ansible/default.nix { };
in
pkgs.mkShell {
  buildInputs = terraformEnv.buildInputs ++ ansiblePackage.buildInputs;

  shellHook = ''
     ${ansiblePackage.shellHook}
  '';
}