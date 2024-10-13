{ pkgs, ... }: {

  programs.waybar.settings.mainBar = {
    
    tray = {
      icon-size = 24;
      spacing = 8;
    };
  };
}