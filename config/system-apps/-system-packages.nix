{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    greetd.tuigreet
    lutris-free
    neofetch
    wineWowPackages.waylandFull
    micro
    parted
    git
    wget
    lshw
    pulseaudio
    usbutils
    udiskie
    udisks
    polkit
    ntfs3g
    pavucontrol
    libnotify
    ungoogled-chromium
    networkmanagerapplet
    openjdk8-bootstrap
    distrobox
    wireshark
  ];
}