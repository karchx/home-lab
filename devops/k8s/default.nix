{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    minikube
    kubectl
    kubernetes-helm
    jq
    go-task
  ];

  shellHook = ''
    alias k='kubectl'
    . <(helm completion bash)
  '';
}
