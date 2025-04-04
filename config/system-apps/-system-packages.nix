{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    angryipscanner
    bzip2
    distrobox
    git
    greetd.gtkgreet
    greetd.tuigreet
    greetd.wlgreet
    libnotify
    lshw
    lutris-free
    magic-wormhole-rs
    micro
    neofetch
    networkmanagerapplet
    nil
    nixfmt-rfc-style
    ntfs3g
    parted
    pavucontrol
    polkit
    pulseaudio
    sshfs
    system-config-printer
    udiskie
    udisks
    ungoogled-chromium
    usbutils
    wget
    wineWowPackages.waylandFull
    wireshark
    wireguard-tools
  ];
}
#
