{ ... }:
{
  programs.nm-applet.enable = true;

  #systemd.services.run-nm-applet = {
  #  enable = true;
  #  serviceConfig = {
  #    ExecStart = "";
  #  };
  #};
}
