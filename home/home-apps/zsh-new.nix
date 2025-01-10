let
  custom = {
    background = "#1e1e2e";
    accent = "#f5c2e7";
    text = "#cdd6f4";
  };
in
{ pkgs, config, ... }:
{
  programs.zsh = {
    enable = true;
    package = pkgs.zsh;

    enableCompletion = false;

    autosuggestion = {
      enable = true;
      highlight = "fg=${custom.accent},bold";
    };

    #syntaxHighlighting = {
    #  enable = true;
    #  highlighters = [
    #    "main"
    #    "brackets"
    #  ];
    #};

    shellAliases = {
      update = "sudo nixos-rebuild switch";
      ".." = "cd ..";
      "😼" = ''echo "nyaaaa :3"'';
      "😿" = ''echo "meowww 3:"'';
      "neofetched" =
        ''clear && neofetch --distro_shorthand on --os_arch off --kernel_shorthand off --cpu_cores logical --cpu_temp C --gpu_type all --gtk_shorthand on --colors 225 219 231 225 225 189 --bold off --ascii_colors 225 117 0 0 0 0'';
      "🏳️‍⚧️" = "firefox https://hrtcafe.net";
      "lumi" = "yippie 😺";
      "sshilo" = "ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 -oHostKeyAlgorithms=+ssh-rsa";
    };

    historySubstringSearch.enable = true;

    history = {
      ignoreDups = true;
      expireDuplicatesFirst = true;
      share = true;
      size = 100000;
      path = "${config.xdg.dataHome}/zsh/history";
    };

    prezto = {
      enable = true;

      #historySubstring = {
      #  notFoundColor = "fg=${custom.text},bg=${custom.accent}";
      #  foundColor = "fg=${custom.accent},bg=${custom.text}";
      #};

      caseSensitive = false;
      color = true;

      prompt = {

      };

      extraModules = [
        "zpty"
      ];
    };

    initExtra = ''
      bindkey '^I' autosuggest-accept
      neofetch --distro_shorthand on --os_arch off --kernel_shorthand off --cpu_cores logical --cpu_temp C --gpu_type all --gtk_shorthand on --colors 225 219 231 225 225 189 --bold off --ascii_colors 225 117 0 0 0 0
    '';
  };
}
