{ pkgs ? import <nixpkgs> {}, ... }:

let
  terraformEnv = import ./terraform/default.nix { inherit pkgs; };
  ansiblePackage = pkgs.callPackage ./ansible/default.nix { };
  k8sPackage = pkgs.callPackage ./k8s/default.nix { };
in
pkgs.mkShell {
  buildInputs = k8sPackage.buildInputs ++ ansiblePackage.buildInputs;

  shellHook = ''
     ${k8sPackage.shellHook}
     ${ansiblePackage.shellHook}
  '';
}
