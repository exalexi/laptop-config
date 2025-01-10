{ pkgs, ... }:
{
  networking = {
    hostName = "Lextop";
    networkmanager.enable = true;
    useDHCP = false;
    interfaces = {
      enp12s0.useDHCP = true;
      wlp0s20f3.useDHCP = true;
    };
  };
}
