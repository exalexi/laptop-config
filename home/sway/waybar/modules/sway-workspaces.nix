{ pkgs, ... }: {

  programs.waybar.settings.mainBar = {
  
    "sway/workspaces" = {
      format = "{name}";
      on-click = "activate";
      format-icons = {
        default = "";
        urgent = "";
        focused = "";
        persistent = "";
        sort-by-number = true;
      };
      disable-scroll = false;
      disable-click = false;
      disable-scroll-wraparound = true;
      enable-bar-scroll = true;
      disable-auto-back-and-forth = true;
      warp-on-scroll = true;

    };
  };
}