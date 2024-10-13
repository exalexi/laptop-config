{ pkgs, ... }: {
  imports =
  [
    ./audio.nix
    ./bluetooth.nix
    ./boot.nix
    ./docker.nix
    ./fonts.nix
    ./greetd.nix
    ./laptop.nix
    ./locale.nix
    ./mount.nix
    ./networking.nix
    ./printing.nix
    ./sway.nix
    ./video.nix
    ./vms.nix
    ./vnstat.nix
  ];
}