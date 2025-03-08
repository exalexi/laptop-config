{ ... }:
{
  imports = [
    ./audio.nix
    ./bluetooth.nix
    ./boot.nix
    #./borg.nix
    ./docker.nix
    ./fonts.nix
    ./laptop.nix
    ./locale.nix
    ./mount.nix
    ./networking.nix
    ./nm-applet.nix
    ./polkit.nix
    ./printing.nix
    ./ssh.nix
    ./sway.nix
    ./tailscale.nix
    ./video.nix
    ./vms.nix
    ./vnstat.nix
    ./wlgreet.nix
  ];
}
