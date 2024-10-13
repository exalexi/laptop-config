{ pkgs, ... }: {

  programs.waybar.settings.mainBar = {
    
    pulseaudio-slider = {
      min = 0;
      max = 100;
      orientation = "horizontal";
    };
  };
}