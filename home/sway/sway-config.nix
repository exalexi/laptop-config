let
  custom = {
    accent = "f5c2e7";
    text = "cdd6f4";
    background = "1e1e2e";
  };
in
{ ... }:
{

  wayland.windowManager.sway = {
    checkConfig = false;
    enable = true;
    systemd.enable = true;
    package = null;
    wrapperFeatures.gtk = true;
    config = {
      modifier = "Mod4";

      defaultWorkspace = "10";

      focus.followMouse = "always";

      gaps = {
        inner = 6;
        left = 3;
        right = 3;
        top = 0;
        bottom = 3;
      };

      terminal = "alacritty";
      menu = "rofi -show drun";
      bars = [ ];
      window = {
        hideEdgeBorders = "none";
        border = 2;
        titlebar = false;
      };

      colors = {
        background = custom.background;
        urgent = {
          background = custom.background;
          border = custom.accent;
          childBorder = custom.accent;
          indicator = custom.accent;
          text = custom.text;
        };
        unfocused = {
          background = custom.background;
          border = custom.accent;
          childBorder = custom.accent;
          indicator = custom.accent;
          text = custom.text;
        };
        placeholder = {
          background = custom.background;
          border = custom.accent;
          childBorder = custom.accent;
          indicator = custom.accent;
          text = custom.text;
        };
        focusedInactive = {
          background = custom.background;
          border = custom.accent;
          childBorder = custom.accent;
          indicator = custom.accent;
          text = custom.text;
        };
        focused = {
          background = custom.background;
          border = custom.accent;
          childBorder = custom.accent;
          indicator = custom.accent;
          text = custom.text;
        };
      };

      input."*" = {
        xkb_layout = "de";
        xkb_variant = "nodeadkeys";
      };

      workspaceAutoBackAndForth = true;

      floating = {

        criteria = [
          {
            app_id = "PacketTracer";
          }
          {
            app_id = "org.gnome.Nautilus";
          }
          {
            app_id = "org.gnome.FileRoller";
          }
          {
            app_id = "Alacritty";
          }
          {
            app_id = "org.keepassxc.KeePassXC";
          }
          {
            app_id = "nm-connection-editor";
          }
          {
            app_id = "simple-scan";
          }
          {
            app_id = "steamwebhelper";
          }
        ];
      };
    };
  };
}
