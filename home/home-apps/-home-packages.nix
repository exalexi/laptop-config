{ pkgs, ... }:
{
  home.packages = with pkgs; [
    alacritty
    dmidecode
    drawio
    element-desktop
    file
    file-roller
    #firefox
    fish
    freecad
    gimp
    grim
    htop
    hwinfo
    jellyfin-media-player
    keepassxc
    libreoffice
    logisim
    nautilus
    nixfmt-rfc-style
    playerctl
    qbittorrent
    rofi-power-menu
    rofi-screenshot
    rofimoji
    rpi-imager
    simple-scan
    slurp
    subfinder
    tigervnc
    tor-browser
    vesktop
    vlc
    wl-clipboard
    wtype
    yt-dlp

    # wget https://www.netacad.com/resources/lab-downloads?courseLang=en-US -O /home/lex/Documents/Cisco/CiscoPacketTracer822_amd64_signed.deb
    # sudo nix-store --add-fixed sha256 /home/lex/Documents/Cisco/CiscoPacketTracer822_amd64_signed.deb
    # ciscoPacketTracer8
  ];
}
