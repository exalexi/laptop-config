{ pkgs, ... }: {

  programs.waybar.settings.mainBar = {
    
    cpu = {
      format = "{usage}%    {min_frequency}-{max_frequency}GHz Avg:{avg_frequency}GHz";
      tooltip = false;
      interval = 1;

    };
  };
}