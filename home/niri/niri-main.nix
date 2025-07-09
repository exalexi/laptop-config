{ pkgs, inputs, ... }:
{
  programs.niri = {
    enable = true;
    # package = pkgs.niri-stable;
  };

  #nixpkgs.overlays = [ inputs.niri.overlays.niri ];

}
