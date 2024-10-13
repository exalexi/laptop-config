{ pkgs, ... }: {

  programs.waybar.settings.mainBar = {
    
    pulseaudio = {
      format = "{volume}% {icon}   {format_source}";
      format-bluetooth = "{volume}% {icon} {format_source}";
      format-bluetooth-muted = " {icon} {format_source}";
      format-icons = {
        car = "";
        default = [ "" "" "" ];
        handsfree = "";
        headphones = "";
        headset = "";
        phone = "";
        portable = "";
      };
      format-muted = " {format_source}";
      format-source = "{volume}% ";
      format-source-muted = "";
      on-click = "pavucontrol";
    };
  };
}