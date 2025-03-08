{
  description = "";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

    # Lix
    lix-module = {
      url = "https://git.lix.systems/lix-project/nixos-module/archive/2.92.0.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Home-Manager
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Catppuccin
    catppuccin = {
      url = "github:catppuccin/nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # NixOS Spicetify
    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # agenix
    agenix = {
      url = "github:ryantm/agenix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
      inputs.darwin.follows = "";
    };

  };

  outputs =
    {
      self,
      nixpkgs,
      lix-module,
      home-manager,
      catppuccin,
      spicetify-nix,
      agenix,
      ...
    }@inputs:
    {

      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixfmt-rfc-style;
      nixosConfigurations.Lextop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          lix-module.nixosModules.default
          catppuccin.nixosModules.catppuccin
          home-manager.nixosModules.home-manager
          agenix.nixosModules.default
          ./configuration.nix
          {
            home-manager.users.lex = {
              imports = [
                ./home/default.nix
                catppuccin.homeManagerModules.catppuccin
                inputs.spicetify-nix.homeManagerModules.default
              ];
            };
          }
          (
            { config, pkgs, ... }:
            {
              nixpkgs.overlays = [
                (final: prev: {
                  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
                })
              ];
            }
          )
        ];
      };
    };
}
