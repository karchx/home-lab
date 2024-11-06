{ pkgs ? import <nixpkgs> { } }:

with pkgs; {
  buildInputs = [ ansible ];

  shellHook = ''
    export LC_ALL="C.UTF-8"
  '';
}
