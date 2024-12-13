{ pkgs, ... }: {
  imports = [ ./modules/_module-imports.nix ];

  programs.waybar = {

    settings.mainBar = {
      layer = "bottom";
      position = "top";
      height = 25;
      spacing = 10;
      margin-top = 0;
      margin-bottom = 0;
      margin-left = 0;
      margin-right = 0;
      reload_style_on_change = true;
      modules-left = [
        "sway/window"
        "network"
        "user"
        "temperature" #//TODO

        #"cpu"
        #"image"
        #"custom/mediaplayer"
      ];
      modules-center = [
        "sway/workspaces"
      ];
      modules-right = [
        #"network"
        #"memory"
        #"cpu"
        #"user"
        "backlight"
        "battery"
        "pulseaudio"
        "tray"
        "clock"
      ];
    };
  };
}
