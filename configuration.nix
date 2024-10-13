{ config, pkgs, lib, ... }: {

  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      <home-manager/nixos>
      ./config/system-apps/_system-apps-imports.nix
      ./config/system/_system-imports.nix
    ];

  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.lexi = {
    isNormalUser = true;
    useDefaultShell = true;
    description = "Lexi";
    extraGroups = [ "networkmanager" "wheel" "video" "storage" "libvirtd" "wireshark" ];
    packages = with pkgs; [];
  };

  # Home-Manager
  home-manager = {
  	useUserPackages = true;
  	useGlobalPkgs = true;
    users.lexi = import ./home;
  };

  # Enable zsh completion.
  environment.pathsToLink = [ "/share/zsh" ];
  
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "24.05"; 
}
