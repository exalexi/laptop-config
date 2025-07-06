{ ... }:
{
  # Everything inside here is managed by Home Manager
  programs.home-manager = {
    enable = true;
  };

  imports = [
    #./sway/_sway-imports.nix
    ./home-apps/_home-apps-imports.nix
    ./niri/_niri-imports.nix
  ];

  # The state verson is required and should stay at the version you originally installed.
  home.stateVersion = "24.05";
}
