{ config, lib, ... }:
{
  programs.niri.settings.binds = with config.lib.niri.actions; {
    "XF86AudioRaiseVolume".action.spawn = [
      "wpctl"
      "set-volume"
      "@DEFAULT_AUDIO_SINK@"
      "0.05+"
    ];
    "XF86AudioLowerVolume".action.spawn = [
      "wpctl"
      "set-volume"
      "@DEFAULT_AUDIO_SINK@"
      "0.05-"
    ];
    # Terminal
    "Mod+Return".action.spawn = "alacritty";
    # Kill focused window
    "Mod+shift+q".action = close-window;

    # TODO
    # Kill focused window
    #"Mod4+shift+q" = "kill";

    # Open Useful Stuff
    "Mod+ctrl+shift+n".action.spawn = "nautilus";
    "Mod+ctrl+shift+v".action.spawn = "code";
    "Mod+ctrl+shift+f".action.spawn = "firefox";
    "Mod+ctrl+shift+s".action.spawn = "steam";
    "Mod+ctrl+shift+d".action.spawn = "vesktop";
    "Mod+ctrl+shift+e".action.spawn = "element-desktop";
    "Mod+ctrl+shift+w".action.spawn = "libreoffice-writer";
    "Mod+ctrl+shift+x".action.spawn = "libreoffice-calc";
    "Mod+ctrl+shift+u".action.spawn = "virt-manager";

    # Start launcher
    "Mod+d".action.spawn = "rofi -show-icons -show drun";
    # Switch Windows
    "Mod+tab".action.spawn = "rofi -show-icons -show window";
    # Rofi Power Menu
    "Mod+ctrl+p".action.spawn = "rofi -show power-menu -modi power-menu:rofi-power-menu";
    # Rofimoji
    "Mod+shift+period".action.spawn = "rofimoji -r emoji";
    # Swaylock
    "Mod+l".action.spawn = "swaylock";
    # Screenshot
    "Mod+print".action.spawn = ''grim -g "$(slurp)" - | wl-copy'';
    # Rofi Screenshot
    "Mod+shift+print".action.spawn = "rofi-screenshot";

    # Moving around
    # Move your focus around
    #    "Mod+Left" = "focus left";
    #    "Mod+Down" = "focus down";
    #    "Mod+Up" = "focus up";
    #    "Mod+Right" = "focus right";

    # Move your focused window around
    #    "Mod4+Shift+Left" = "move left";
    #    "Mod4+Shift+Down" = "move down";
    #    "Mod4+Shift+Up" = "move up";
    #    "Mod4+Shift+Right" = "move right";

    # Resize Mode
    #    "Mod4+r" = "mode resize";

    # Workspaces
    # Switch to workspace
    "Mod+1".action.focus-workspace = 1;
    "Mod+2".action.focus-workspace = 2;
    "Mod+3".action.focus-workspace = 3;
    "Mod+4".action.focus-workspace = 4;
    "Mod+5".action.focus-workspace = 5;
    "Mod+6".action.focus-workspace = 6;
    "Mod+7".action.focus-workspace = 7;
    "Mod+8".action.focus-workspace = 8;
    "Mod+9".action.focus-workspace = 9;
    "Mod+0".action.focus-workspace = 10;

    #    #Move focused container to workspace
    #    "Mod4+Shift+1" = "move container to workspace number 1";
    #    "Mod4+Shift+2" = "move container to workspace number 2";
    #    "Mod4+Shift+3" = "move container to workspace number 3";
    #    "Mod4+Shift+4" = "move container to workspace number 4";
    #    "Mod4+Shift+5" = "move container to workspace number 5";
    #    "Mod4+Shift+6" = "move container to workspace number 6";
    #    "Mod4+Shift+7" = "move container to workspace number 7";
    #    "Mod4+Shift+8" = "move container to workspace number 8";
    #    "Mod4+Shift+9" = "move container to workspace number 9";
    #    "Mod4+Shift+0" = "move container to workspace number 10";
    #
    #    # Scratchpad
    #    "Mod4+minus" = "scratchpad show";
    #    "Mod4+Shift+minus" = "move scratchpad";
    #
    #    # Floating Toggle
    #    "Mod4+shift+space" = "floating toggle";
    #
    #    # Important
    #    "Mod4+ctrl+shift+k+m" = "exec firefox https://www.youtube.com/watch?v=YfXpNIQbdjo";
    #    "Mod4+ctrl+shift+c+s" = "exec firefox https://www.youtube.com/watch?v=9wQnO-Katws";
    #    "Mod4+ctrl+shift+p+t" = "exec firefox https://www.youtube.com/watch?v=LdTIl4FS-58";
    #    "Mod4+ctrl+shift+m+1" = "exec firefox https://www.youtube.com/watch?v=ZGCckws9SJI";
    #    "Mod4+ctrl+shift+w+3" = "exec firefox https://www.youtube.com/watch?v=19Tx3LDpgRk";
    #
    #    # Flip screen
    #    "Mod4+ctrl+up" = "exec swaymsg -- output - transform 0";
    #    "Mod4+ctrl+left" = "exec swaymsg -- output - transform 90";
    #    "Mod4+ctrl+down" = "exec swaymsg -- output - transform 180";
    #    "Mod4+ctrl+right" = "exec swaymsg -- output - transform 270";
  };
}
