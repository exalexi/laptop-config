{ ... }:
{
  services.greetd = {
    enable = true;
    restart = true;
    settings = {
      default_session = {
        user = "lex";
        command = "tuigreet --cmd 'niri-session' --remember --asterisks -g 'AUTHORIZED PERSONNEL ONLY!!!'";
      };
    };
  };
}
