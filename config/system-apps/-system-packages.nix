{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    distrobox
    git
    greetd.tuigreet
    jdk8
    libnotify
    lshw
    lutris-free
    micro
    neofetch
    networkmanagerapplet
    nil
    nixfmt-rfc-style
    ntfs3g
    openjdk8-bootstrap
    parted
    pavucontrol
    polkit
    pulseaudio
    udiskie
    udisks
    ungoogled-chromium
    usbutils
    wget
    wineWowPackages.waylandFull
    wireshark
    angryipscanner
    bzip2
    system-config-printer
    magic-wormhole-rs
    wireguard-tools
    sshfs
  ];
}
#
