{ ... }:
{

  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
    plymouth.enable = true;
  };
  catppuccin.plymouth.enable = true;
}
