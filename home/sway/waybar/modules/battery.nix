{ ... }:
{

  programs.waybar.settings.mainBar = {

    battery = {
      #bat = "BAT2";
      interval = 60;
      states = {
        warning = 30;
        critical = 15;
      };
      format = "{capacity}% {icon} ";
      format-icons = [
        ""
        ""
        ""
        ""
        ""
      ];
      max-length = 25;
    };
  };
}
