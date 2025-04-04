{ pkgs, ... }:
{

  # Prerequisite for Mullvad
  networking.nameservers = [
    "1.1.1.1"
    "1.0.0.1"
  ];

  services.resolved = {
    enable = true;
    dnssec = "true";
    domains = [ "~." ];
    fallbackDns = [
      "1.1.1.1"
      "1.0.0.1"
    ];
    dnsovertls = "true";
  };

  services.mullvad-vpn = {
    enable = true;
    package = pkgs.mullvad-vpn;
  };

}
