{ pkgs, ... }:
{
  networking.firewall = {
    allowedUDPPorts = [ 51850 ]; # Clients and peers can use the same port, see listenport
  };

  # Enable WireGuard
  networking.wireguard.enable = true;
  networking.wireguard.interfaces = {
    wg0 = {
      # Determines the IP address and subnet of the client's end of the tunnel interface.
      ips = [ "10.13.12.161/24" ];
      listenPort = 51850; # to match firewall allowedUDPPorts (without this wg uses random port numbers)
      # mtu = 1360;
      privateKeyFile = "/home/lex/.wireguard/privatekey";
      peers = [
        {
          publicKey = "mbvOXd9FvV9/++wXo7IP8D7dDDNJ7/hhHTVAxvpXB2o=";
          allowedIPs = [
            "10.13.12.0/24"
            "192.168.178.0/24"
          ];
          name = "guineapig";
          endpoint = "smirkc.at:51850";
          persistentKeepalive = 25;
        }
      ];
    };
  };
}
