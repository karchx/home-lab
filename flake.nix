{
  description = "stivarch flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
   nixosConfigurations.stivarch = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
    };
  };
}