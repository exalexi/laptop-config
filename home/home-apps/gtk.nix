{ config,  pkgs,  lib,  ...}: {

  gtk = {
    enable = true;
    catppuccin.enable = true; # TODO find a replacement.
    font = {
      package = pkgs.noto-fonts;
      name = "Noto Sans Regular";
      size = 10;
    };
    
    iconTheme = {
      name = "Papirus-Dark";
      package = lib.mkDefault pkgs.catppuccin-papirus-folders;
      #package = pkgs.catppuccin-papirus-folders.override {
      #  flavor = "mocha";
      #  accent = "pink";
      #};
    };
    gtk3.extraConfig."gtk-application-prefer-dark-theme" = true;     
  };

  systemd.user.sessionVariables = {
    GTK_THEME = config.gtk.theme.name;
    QT_QPA_PLATFORMTHEME = "gtk2";
  };
  #home.packages = [ pkgs.libsForQt5.qtstyleplugins ];
}
