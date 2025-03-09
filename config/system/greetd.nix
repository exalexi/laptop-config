{ ... }:
{
  services.greetd = {
    enable = true;
    restart = true;
    settings = {
      default_session = {
        user = "lex";
        command = "tuigreet --cmd 'dbus-run-session sway' -t -r --asterisks -g 'Hiya'";
      };
    };
  };
}
