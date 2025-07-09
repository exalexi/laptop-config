{ ... }:
{
  services.greetd = {
    enable = true;
    restart = true;
    settings = {
      default_session = {
        user = "lex";
        command = "tuigreet --cmd 'niri --session --config /etc/nixos/home/niri/config.kdl' --remember --asterisks -g 'AUTHORIZED PERSONNEL ONLY!!!'";
      };
    };
  };
}
