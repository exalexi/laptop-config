{ pkgs, ... }: {

  programs.waybar.settings.mainBar = {
    
    user = {
      format = "{work_d}:{work_H}:{work_M}:{work_S}";
      interval = 1;
    };
  };
}