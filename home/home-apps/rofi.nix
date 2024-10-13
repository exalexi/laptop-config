let
  custom = {
    main = "#1e1e2e";
    accent = "#f5c2e7";
  };
in { pkgs, lib, config, ... }: {
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    plugins = [];
    theme = 
      let 
        inherit (config.lib.formats.rasi) mkLiteral;
      in {
      "window" = {
        width = lib.mkForce "50";
        height = lib.mkForce "50%";
        #background-color = lib.mkForce "rgba(30 30 46 0.8)";
        border = lib.mkForce 2;
        border-color =  mkLiteral custom.accent;
        border-radius = 15;
      };
      "prompt" = {
        border-radius = 15;
        background-color = mkLiteral custom.accent;
        margin = 10;
        vertical-align = mkLiteral "0.5";
        horizontal-align = mkLiteral "0.5";
      };
      "entry" = {
        border = lib.mkForce 2;
        border-color =  mkLiteral custom.accent;
        border-radius = 15;
        text-color = mkLiteral custom.accent;
        margin = 10;
      };
      "textbox" = {
        text-color = mkLiteral custom.accent;
      };
      "element selected" = {
        text-color = mkLiteral custom.accent;
        border = lib.mkForce 2;
        border-color =  mkLiteral custom.accent;
        border-radius = 15;
      };
      "listview" = {
        margin = 10;
      };
    };
  };
} 