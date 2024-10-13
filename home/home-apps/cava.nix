let
  custom = {
    background = "'#1e1e2e'";
    accent = "'#f5c2e7'";
    text = "'#cdd6f4'";
  };
in  { pkgs, lib, ... }: {
  programs.cava = {
    enable = true;
    package = pkgs.cava;
    settings = {
      general.framerate = 60;
      input.method = "pulse";
      smoothing.noise_reduction = 80;
      color = {
        background = lib.mkForce custom.background;
        foreground = lib.mkForce custom.accent;
      };
    };
  };
}