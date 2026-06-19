{
  description = "NixOS Server Flake for Web & Container Services";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations.webserver = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./hosts/webserver/configuration.nix
      ];
    };
  };
}
