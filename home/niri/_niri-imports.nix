{ ... }:
{
  imports = [
    ./niri-main.nix
    ./niri-swaylock.nix
    #./niri-keybinds.nix
    ../sway/waybar/waybar.nix
  ];
}
