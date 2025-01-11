{
  pkgs,
  ...
}:
{
  programs.spicetify = {
    enable = true;
    theme = pkgs.spicePkgs.themes.catppuccin;
    colorScheme = "mocha";

    enabledExtensions = with pkgs.spicePkgs.extensions; [
      shuffle
    ];
  };
}
