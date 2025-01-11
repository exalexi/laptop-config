{ ... }:
{

  #TODO
  home-manager.users.lexi = {
    xdg.mimeApps = {
      enable = true;
      defaultApplications = {
        "text/html" = "firefox.desktop";
        "x-scheme-handler/http" = "firefox.desktop";
        "x-scheme-handler/https" = "firefox.desktop";
        "x-scheme-handler/about" = "firefox.desktop";
        "x-scheme-handler/unknown" = "firefox.desktop";
        "application/pdf" = "firefox.desktop";
        "image/png" = "firefox.desktop";
        "image/jpg" = "firefox.desktop";
        "audio/mp3" = "vlc.desktop";
        "audio/flac" = "vlc.desktop";
        "video/mp4" = "vlc.desktop";
      };
    };
  };
}
