{ pkgs, ... }: 	{
  wayland.windowManager.sway.config.output = rec{
    eDP-2 = {
      resolution = "1920x1080@144Hz";
      position = "0 0";
      scale = "1";
    };
  };
}