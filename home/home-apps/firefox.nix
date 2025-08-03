{ pkgs, ... }:
{

  programs.firefox = {
    enable = true;
    
    policies = {
      DefaultDownloadDirectory = "/home/lex/download";
      DisableFeedbackCommands = true;
      DisableFirefoxStudies = true;
      DisablePocket = true;
      DisableProfileImport = true;
      DisableTelemetry = true;
      EnableTrackingProtection = {
        Value = true;
        Locked = false;
        Cryptomining = true;
        Fingerprinting = true;
      };
      FirefoxSuggest = false;
      NetworkPrediction = true;
      NoDefaultBookmarks = true;
      OfferToSaveLogins = true;
      PasswordManagerEnabled = true;
      StartDownloadsInTempDirectory = true;
    };
    /*
    profiles.default = {
      id = 0;
      name = "Default";
      search = {
        default = "duckduckgo";
        privateDefault = "duckduckgo";
        force = true;
        engines = {
          "google".metaData.hidden = true;
          "Amazon".metaData.hidden = true;

          "Nix Packages" = {
            urls = [
              {
                template = "https://search.nixos.org/packages";
                params = [
                  {
                    name = "type";
                    value = "packages";
                  }
                  {
                    name = "query";
                    value = "{searchTerms}";
                  }
                ];
              }
            ];
            icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
            definedAliases = [ "np" ];
          };

          "Nix Options" = {
            urls = [
              {
                template = "https://search.nixos.org/options";
                params = [
                  {
                    name = "type";
                    value = "packages";
                  }
                  {
                    name = "query";
                    value = "{searchTerms}";
                  }
                ];
              }
            ];
            icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
            definedAliases = [ "no" ];
          };

          "NixOS Wiki" = {
            urls = [ { template = "https://wiki.nixos.org/w/index.php?search={searchTerms}"; } ];
            icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
            definedAliases = [ "nw" ];
          };

          "Noogle" = {
            urls = [ { template = "https://noogle.dev/q?term={searchTerms}"; } ];
            icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
            definedAliases = [ "ng" ];
          };

          "Home-Manager Options" = {
            urls = [ { template = "https://home-manager-options.extranix.com/?query={searchTerms}"; } ];
            icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
            definedAliases = [ "hm" ];
          };
        };
      };
      extensions.force = true;
    };*/
  };
}
