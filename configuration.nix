{
  config,
  pkgs,
  lib,
  ...
}:
{

  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./config/system-apps/_system-apps-imports.nix
    ./config/system/_system-imports.nix
  ];

  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.lex = {
    isNormalUser = true;
    useDefaultShell = true;
    description = "Lex";
    extraGroups = [
      "networkmanager"
      "wheel"
      "video"
      "storage"
      "libvirtd"
      "wireshark"
      "scanner"
      "lp"
    ];
  };

  # Home-Manager
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    users.lex = import ./home;
  };

  # Enable zsh completion for system packages
  environment.pathsToLink = [ "/share/zsh" ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  boot.binfmt.emulatedSystems = [ "aarch64-linux" ];

  # Enable flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  system.stateVersion = "24.05";
}
