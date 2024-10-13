{ pkgs, ... }: {

  programs.waybar.settings.mainBar = {
    
    "sway/window" = {
      format = "  😼 {app_id}";
      all-outputs = true;
      #rotate = 2;
      icon = true;
      icon-size = 24;
    };
  };
}