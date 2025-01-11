{ ... }:
{

  programs.waybar.settings.mainBar = {

    cpu = {
      format = "{usage}%   {avg_frequency}GHz";
      tooltip = false;
      interval = 1;

    };
  };
}
