let
  custom = {
    accent = "f5c2e7";
    text = "cdd6f4"; 
    background = "1e1e2e";
    translucency = "00000080";
    transparency = "00000000";
  };
in { pkgs, lib, ... }: {

  programs.swaylock = {
    enable = true;
    package = pkgs.swaylock-effects;
    settings = {

      indicator-idle-visible = true;
      indicator-radius = 300;
      clock = true;
      screenshots = true;
      fade-in = 0.5;
      effect-blur = "3x2";
      effect-vignette = "0.5:0.5";
      grace = 2;

      # Catppuccin Mocha Pink but modified
      color =                 lib.mkForce custom.background;
      bs-hl-color =           lib.mkForce custom.accent;
      caps-lock-bs-hl-color = lib.mkForce custom.accent;
      caps-lock-key-hl-color= lib.mkForce custom.accent;
      inside-color=           lib.mkForce custom.translucency;
      inside-clear-color=     lib.mkForce custom.translucency;
      inside-caps-lock-color= lib.mkForce custom.translucency;
      inside-ver-color=       lib.mkForce custom.translucency;
      inside-wrong-color=     lib.mkForce custom.translucency;
      key-hl-color=           lib.mkForce custom.accent;
      layout-bg-color=        lib.mkForce custom.transparency;
      layout-border-color=    lib.mkForce custom.transparency;
      layout-text-color=      lib.mkForce custom.accent;
      line-color=             lib.mkForce custom.accent;
      line-clear-color=       lib.mkForce custom.accent;
      line-caps-lock-color=   lib.mkForce custom.accent;
      line-ver-color=         lib.mkForce custom.accent;
      line-wrong-color=       lib.mkForce custom.accent;
      ring-color=             lib.mkForce custom.background;
      ring-clear-color=       lib.mkForce custom.accent;
      ring-caps-lock-color=   lib.mkForce custom.accent;
      ring-ver-color=         lib.mkForce custom.accent;
      ring-wrong-color=       lib.mkForce custom.accent;
      separator-color=        lib.mkForce custom.transparency;
      text-color=             lib.mkForce custom.text;
      text-clear-color=       lib.mkForce custom.text;
      text-caps-lock-color=   lib.mkForce custom.text;
      text-ver-color=         lib.mkForce custom.text;
      text-wrong-color=       lib.mkForce custom.text;
    };
  };
  
}