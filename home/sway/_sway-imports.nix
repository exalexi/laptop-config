{ pkgs, ...}: {
  imports =
  [ 
    ./waybar/waybar.nix
    ./sway-config.nix
    ./sway-extraconfig.nix
    ./sway-keybinds.nix
    ./sway-monitors.nix
    ./swayidle.nix
    ./swaylock.nix
  ];
}