{ pkgs, ... }: {

  programs.waybar.settings.mainBar = {
    memory = { 
      format = "{}% "; 
    };
  };
}