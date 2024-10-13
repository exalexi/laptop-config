{ pkgs, ... }: {
  imports = [
    ./-home-packages.nix 
    ./alacritty.nix	
    ./cava.nix
    ./dconf.nix
    ./dunst.nix
    ./firefox.nix
    ./git.nix
    ./gtk.nix 
    ./kando.nix
    ./rofi.nix
    ./vscode.nix
    ./zsh-new.nix
  ];
}