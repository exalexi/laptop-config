{ pkgs, ... }: {
    home.packages = with pkgs; [
    file
    htop
    eza
    wl-clipboard
    mako
    alacritty
    keepassxc
    gnome.eog
    gnome.evince
    gnome.file-roller
    gnome.nautilus
    element-desktop
    rpi-imager
    tigervnc
    gimp
    protonvpn-cli_2
    protonvpn-gui
    vesktop
    nixfmt-rfc-style
    vlc
    fish
    grim
    slurp
    wtype
    yt-dlp
    rofimoji
    rofi-power-menu
    rofi-screenshot
    hwinfo
    dmidecode 
    simple-scan
    jellyfin-media-player

    # Waybar Media Player
    feh 
    playerctl

    #School
    libreoffice
    logisim
    freecad
    #ciscoPacketTracer8

    tor-browser
  ];
}