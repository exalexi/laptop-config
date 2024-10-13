{ pkgs, ...}: {

  imports =
    [ 
      ./waybar-layout.nix
      ./waybar-style.nix
    ];
    
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    systemd = {
      enable = true;
      target = "sway-session.target";
    };
  };
}