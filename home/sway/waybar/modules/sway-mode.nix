{ pkgs, ... }: {

  programs.waybar.settings.mainBar = {
    
    "sway/mode" = { 
      format = " {}";
        max-length = 50;
    };
  };
}