let
  custom = {
    background = "#1e1e2e";
    accent = "#f5c2e7";
    text = "#cdd6f4";
    transparency = "rgba(0,0,0,0)";
  };
in  {pkgs, lib, ... }: 	{
  programs.alacritty = {
    enable = true;

    # Alacritty-Sixel for images in neofetch
    # TODO someday i guess 🐱
    /*package = pkgs.alacritty.overrideDerivation (oldAttrs: {
      name = "alacritty-sixel";
      src = pkgs.fetchgit {
        url = "https://github.com/microo8/alacritty-sixel.git";
        rev = "53110c6ecfc49d8e9298e90d1779a5d156d191fe";
        hash = "sha256-su3ul5LF8CLBy/2/GQ2gpbbP8C+cLziRplGTf714beE=";
        #cargoHash = "";
      };
      cargoHash = "";
   });*/


    settings = {
      env.TERM = "alacritty";

      shell = {
        program = "${pkgs.zsh}/bin/zsh";
        args = [ "-l" ];
      };

      window = {
        decorations = "full";
        title = "Alacritty";
        dynamic_title = true;
        class = {
          instance = "Alacritty";
          general = "Alacritty";
        };
        opacity = 0.8;
      };
      font = {
        normal = {
          family = "monospace";
          style = "regular";
        };
        bold = {
          family = "monospace";
          style = "regular";
        };
        italic = {
          family = "monospace";
          style = "regular";
        };
        bold_italic = {
          family = "monospace";
          style = "regular";          	
        };
        size = 14.0;	
      };	
      colors = {
        #foreground = lib.mkDefault custom.accent;
        #background = lib.mkDefault custom.background;
        cursor = {
          text =     lib.mkForce custom.background;
          cursor =   lib.mkForce custom.accent;
        };
      };
    };
  };
}