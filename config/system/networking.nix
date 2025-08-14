{ ... }:
{
  networking = {
    hostName = "Lextop";
    networkmanager.enable = true;
    useDHCP = false;
    interfaces = {
      enp8s0.useDHCP = true;
      wlp0s20f3.useDHCP = true;
    };
  };

  systemd.network.wait-online.enable = false;

  networking.useNetworkd = true;

}
