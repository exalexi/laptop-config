{ pkgs, ... }: {

  programs.waybar.settings.mainBar = {
    
    clock = {
      format = "   {:%a %d %b, %H:%M }";
      tooltip = "true";
      tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
      format-alt = "   {:%d/%m }";
      #format = " {%a %0e.%0d %H:%M}";
      #timezone = "Europe/Berlin";
      #tooltip = "true";
      #tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
      #format-alt = " {:%d/%m}";
    };      
  };
}