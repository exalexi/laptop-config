{ ... }:
{

  programs.waybar.settings.mainBar = {

    "niri/workspaces" = {
      format = "{index}";
      on-update = "activate";
      format-icons = {
        default = "";
        urgent = "";
        focused = "";
        persistent = "";
        sort-by-number = true;
      };
      on-scroll-down = "niri msg action focus-workspace-down";
      on-scroll-up = "niri msg action focus-workspace-up";
    };
  };
}
