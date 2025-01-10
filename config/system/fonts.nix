{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    cantarell-fonts
    font-awesome
    nerdfonts
  ];
}
