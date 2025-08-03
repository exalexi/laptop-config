{ ... }:
{
  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "pink";
    gtk = {
      enable = true;
      accent = "pink";
      flavor = "mocha";
    };

    # 25.05 broke it
    mako.enable = false;
    firefox.enable = false;
  };
}
