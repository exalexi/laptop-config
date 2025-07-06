{ ... }:
{

  programs.waybar.settings.mainBar = {

    "niri/window" = {
      format = "  😼 {app_id}";
      all-outputs = true;
      #rotate = 2;
      icon = true;
      icon-size = 24;
    };
  };
}
