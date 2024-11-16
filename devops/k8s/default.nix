{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    minikube
    kubernetes-helm
    jq
  ];

  shellHook = ''
    alias k='minikube kubectl'
    . <(minikube completion bash)
    . <(helm completion bash)

    # kubectk and docker completion require the control plane to be running
    if [ $(minikube status -o json | jq -r .Host) = "Running" ]; then
            . <(k completion bash)
            . <(minikube -p minikube docker-env)
    fi
  '';
}