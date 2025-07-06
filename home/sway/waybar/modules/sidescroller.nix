{ ... }:
{

  programs.waybar.settings.mainBar = {
    "memory#sidescroller" = {
      format = "😼";
      rotate = 20;
      on-scroll-down = "niri msg action focus-column-right";
      on-scroll-up = "niri msg action focus-column-left";
    };
  };
}
